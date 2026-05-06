# MacrosDiary - TFG Grupo 7 (CEAC)

MacrosDiary es una aplicación móvil multiplataforma desarrollada con **Flutter** orientada al seguimiento nutricional personalizado. Permite a los usuarios registrar su ingesta diaria, calcular objetivos metabólicos basados en fórmulas científicas y visualizar su progreso mediante gráficos interactivos.

## 🚀 Requisitos del Entorno (Stack Técnico)

Para compilar y ejecutar este proyecto correctamente, es necesario contar con las siguientes versiones específicas utilizadas durante el desarrollo:

* **Flutter:** 3.38.9 (Stable Channel)
* **Dart:** 3.10.8
* **Java (JDK):** 17 (Obligatorio para la compatibilidad con Isar)
* **Android SDK:** 36 (Nivel de compilación requerido por los plugins actuales)

## 🛠️ Configuración e Instalación

### 1. Variables de Entorno (Importante)
Debido a requerimientos de la librería de persistencia **Isar**, es fundamental tener configurado el `JAVA_HOME` apuntando al JDK 17 en tu archivo de configuración (`.zshrc` o `.bash_profile`):

    export JAVA_HOME=$(/usr/libexec/java_home -v 17)

### 2. Clonar y preparar el proyecto

    # Obtener las dependencias
    flutter pub get

    # Generar el código automático (Isar, Freezed, Riverpod)
    flutter pub run build_runner build --delete-conflicting-outputs

## 📦 Generación del APK (Release)

Para generar la versión de producción firmada para Android, sigue estos pasos:

1. **Limpiar caché previa:**

   flutter clean
   flutter pub get

2. **Compilar el APK:**

   JAVA_HOME="/opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk/Contents/Home" flutter build apk --release --no-tree-shake-icons

## 📚 Arquitectura y Librerías Principales

El proyecto implementa una arquitectura **MVVM organizada por capas** (Presentación, Lógica de Negocio y Datos):

* **Gestión de Estado:** [Riverpod](https://riverpod.dev/) (^2.5.1)
* **Persistencia Local:** [Isar Database](https://isar.dev/) (^3.1.0+1)
* **Networking:** [Dio](https://pub.dev/packages/dio) (^5.4.1)
* **Gráficos:** [FL Chart](https://pub.dev/packages/fl_chart) (^0.68.0)
* **Cálculo Metabólico:** Implementación de la ecuación de **Mifflin-St Jeor** para estimar el gasto energético.

## 👥 Autores - Grupo 7
* Alejandro De Tena López
* Mónica Martín Amores
* Raúl Antonio Martín Amores
* Gonzalo Fabián Menéndez Morales
* Wilton Torres Correa

**Docente:** Albert Llabrés Darder

**Ciclo:** CFGS Desarrollo de Aplicaciones Multiplataforma