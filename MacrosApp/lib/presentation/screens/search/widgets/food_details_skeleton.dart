import 'package:flutter/material.dart';
import '../../../widgets/skeleton_loader.dart';

class FoodDetailsSkeleton extends StatelessWidget {
  const FoodDetailsSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          // Handle bar
          Container(
            margin: const EdgeInsets.only(top: 12),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          const SizedBox(height: 20),

          // Image placeholder
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SkeletonLoader(
              width: double.infinity,
              height: 200,
              borderRadius: BorderRadius.circular(16),
            ),
          ),

          const SizedBox(height: 24),

          // Title placeholder
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonLoader(
                  width: double.infinity,
                  height: 24,
                  borderRadius: BorderRadius.circular(4),
                ),
                const SizedBox(height: 8),
                SkeletonLoader(
                  width: 150,
                  height: 16,
                  borderRadius: BorderRadius.circular(4),
                ),
              ],
            ),
          ),

          const SizedBox(height: 32),

          // Serving selector placeholder
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SkeletonLoader(
              width: double.infinity,
              height: 50,
              borderRadius: BorderRadius.circular(12),
            ),
          ),

          const SizedBox(height: 16),

          // Quantity selector placeholder
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SkeletonLoader(
              width: double.infinity,
              height: 50,
              borderRadius: BorderRadius.circular(12),
            ),
          ),

          const SizedBox(height: 32),

          // Nutrition info placeholders
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                _buildNutritionRowSkeleton(),
                const SizedBox(height: 12),
                _buildNutritionRowSkeleton(),
                const SizedBox(height: 12),
                _buildNutritionRowSkeleton(),
                const SizedBox(height: 12),
                _buildNutritionRowSkeleton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNutritionRowSkeleton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SkeletonLoader(
          width: 80,
          height: 16,
          borderRadius: BorderRadius.circular(4),
        ),
        SkeletonLoader(
          width: 60,
          height: 20,
          borderRadius: BorderRadius.circular(4),
        ),
      ],
    );
  }
}