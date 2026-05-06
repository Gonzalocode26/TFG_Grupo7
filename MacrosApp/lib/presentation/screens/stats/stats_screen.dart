import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import 'package:tfg_grupo7/l10n/app_localizations.dart'; // ← Import de traducciones
import '../../providers/stats_provider.dart';
import '../../../data/models/stat_type.dart';
import '../../../data/models/daily_chart_data.dart';
import 'dart:ui' as ui;

class StatsScreen extends ConsumerStatefulWidget {
  const StatsScreen({super.key});

  @override
  ConsumerState<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends ConsumerState<StatsScreen> {
  StatType _selectedStat = StatType.calories;

  // Helper para traducir los tipos de macros de la gráfica
  String _getStatName(StatType type, AppLocalizations l10n) {
    switch (type) {
      case StatType.calories: return l10n.calories;
      case StatType.protein: return l10n.protein;
      case StatType.carbs: return l10n.carbs;
      case StatType.fat: return l10n.fat;
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(statsNotifierProvider);
    final notifier = ref.read(statsNotifierProvider.notifier);
    final l10n = AppLocalizations.of(context)!;

    final selectedDate = state.selectedDate ?? DateTime.now();
    final dayData = state.filteredDays.firstOrNull;

    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F7),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(l10n.stats), // ← Traducción aplicada
            backgroundColor: Colors.white,
            pinned: true,
            elevation: 0,
            scrolledUnderElevation: 0,
          ),

          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(bottom: 16),
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  _buildSegmentedControl(l10n),
                  const SizedBox(height: 16),
                  _buildWeekNavigator(state, notifier),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 220,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24, left: 16),
                      child: _buildChart(state, notifier),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${l10n.history} - ${DateFormat('MMM d').format(selectedDate)}',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  if (state.selectedDate != null)
                    TextButton(
                      onPressed: () => notifier.selectDate(null),
                      child: Text(l10n.clearFilter), //
                    ),
                ],
              ),
            ),
          ),

          if (dayData == null || dayData.meals.isEmpty)
            SliverToBoxAdapter(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text(
                    l10n.noDataPeriod,
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
              ),
            )
          else
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  final meal = dayData.meals.elementAt(index);
                  if (meal.foods.isEmpty) return const SizedBox.shrink();

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 4),
                          child: Text(
                            meal.type.getDisplayName(context).toUpperCase(),
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                        ...meal.foods.map((food) => Dismissible(
                          key: Key(food.id.toString()),
                          direction: DismissDirection.endToStart,
                          background: Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.only(right: 20),
                            child: const Icon(Icons.delete, color: Colors.white),
                          ),
                          onDismissed: (direction) {
                            notifier.deleteFood(food, meal);
                          },
                          child: Card(
                            margin: const EdgeInsets.only(bottom: 8),
                            elevation: 0,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            child: ListTile(
                              title: Text(
                                  ui.PlatformDispatcher.instance.locale.languageCode == 'en'
                                      ? (food.originalName ?? food.name)
                                      : food.name,
                                  style: const TextStyle(fontWeight: FontWeight.w600)
                              ),
                              trailing: Text(
                                '${_getFoodMacroValue(food).toInt()} ${_getMacroUnit()}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: _selectedStat.color,
                                ),
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                  );
                },
                childCount: dayData.meals.length,
              ),
            ),

          const SliverToBoxAdapter(child: SizedBox(height: 40)),
        ],
      ),
    );
  }

  Widget _buildWeekNavigator(StatsState state, StatsNotifier notifier) {
    final now = DateTime.now();
    final isCurrentWeek = state.currentWeekStart.year == now.year &&
        state.currentWeekStart.month == now.month &&
        state.currentWeekStart.day >= now.subtract(Duration(days: now.weekday - 1)).day;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () => notifier.changeWeek(-1),
        ),
        Text(state.weekRangeString, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        IconButton(
          icon: const Icon(Icons.chevron_right),
          onPressed: isCurrentWeek ? null : () => notifier.changeWeek(1),
          color: isCurrentWeek ? Colors.grey.shade300 : Colors.black,
        ),
      ],
    );
  }

  // Modificado para usar las traducciones
  Widget _buildSegmentedControl(AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SegmentedButton<StatType>(
        showSelectedIcon: false,
        segments: StatType.values.map((type) {
          return ButtonSegment<StatType>(
            value: type,
            label: Text(_getStatName(type, l10n), style: const TextStyle(fontSize: 12), textAlign: TextAlign.center),
          );
        }).toList(),
        selected: {_selectedStat},
        onSelectionChanged: (newSelection) => setState(() => _selectedStat = newSelection.first),
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.selected)) return _selectedStat.color.withValues(alpha: 0.2);
            return Colors.white;
          }),
          foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.selected)) return _selectedStat.color;
            return Colors.black87;
          }),
        ),
      ),
    );
  }

  Widget _buildChart(StatsState state, StatsNotifier notifier) {
    double maxY = 0;
    for (int i = 1; i <= 7; i++) {
      final val = _getValueForWeekday(i, state.weeklyData);
      if (val > maxY) maxY = val;
    }
    maxY = maxY == 0 ? 100 : maxY * 1.2;

    final weekDays = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        maxY: maxY,
        barTouchData: BarTouchData(
          enabled: true,
          touchTooltipData: BarTouchTooltipData(
            getTooltipColor: (group) => Colors.black87,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              return BarTooltipItem(rod.toY.toInt().toString(), const TextStyle(color: Colors.white, fontWeight: FontWeight.bold));
            },
          ),
          touchCallback: (event, barTouchResponse) {
            if (event.isInterestedForInteractions && barTouchResponse != null && barTouchResponse.spot != null) {
              final index = barTouchResponse.spot!.touchedBarGroupIndex;
              final selectedDate = state.currentWeekStart.add(Duration(days: index));
              notifier.selectDate(selectedDate);
            }
          },
        ),
        titlesData: FlTitlesData(
          show: true,
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                final isSelected = state.selectedDate != null && state.selectedDate!.weekday == (value.toInt() + 1);
                return Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    weekDays[value.toInt()],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: isSelected ? _selectedStat.color : Colors.grey,
                    ),
                  ),
                );
              },
            ),
          ),
          leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: maxY / 4 > 0 ? maxY / 4 : 25,
          getDrawingHorizontalLine: (value) => FlLine(color: Colors.grey.shade300, strokeWidth: 1, dashArray: [5, 5]),
        ),
        borderData: FlBorderData(show: false),
        barGroups: List.generate(7, (index) {
          final weekday = index + 1;
          final yValue = _getValueForWeekday(weekday, state.weeklyData);
          final isSelected = state.selectedDate != null && state.selectedDate!.weekday == weekday;

          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: yValue,
                color: isSelected ? _selectedStat.color : _selectedStat.color.withValues(alpha: 0.5),
                width: 20,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
                backDrawRodData: BackgroundBarChartRodData(show: true, toY: maxY, color: Colors.grey.shade100),
              ),
            ],
          );
        }),
      ),
    );
  }

  double _getFoodMacroValue(dynamic food) {
    switch (_selectedStat) {
      case StatType.calories: return food.calories;
      case StatType.protein: return food.protein;
      case StatType.carbs: return food.carbs;
      case StatType.fat: return food.fat;
    }
  }

  String _getMacroUnit() => _selectedStat == StatType.calories ? 'kcal' : 'g';

  double _getValueForWeekday(int weekday, List<DailyChartData> data) {
    final dayData = data.where((d) => d.date.weekday == weekday).firstOrNull;
    if (dayData == null) return 0.0;
    switch (_selectedStat) {
      case StatType.calories: return dayData.calories;
      case StatType.protein: return dayData.protein;
      case StatType.carbs: return dayData.carbs;
      case StatType.fat: return dayData.fats;
    }
  }
}