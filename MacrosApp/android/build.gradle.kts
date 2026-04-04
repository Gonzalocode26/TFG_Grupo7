allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

// Bloque para arreglar Namespaces y forzar SDK 36 en todas las librerías (incluida Isar)
subprojects {
    afterEvaluate {
        val android = extensions.findByName("android")
        if (android != null) {
            try {
                // 1. Forzamos el SDK 36 para evitar el error lStar
                val extension = android as com.android.build.gradle.BaseExtension
                extension.compileSdkVersion(36)
                extension.defaultConfig {
                    targetSdkVersion(36)
                }

                // 2. Parche de Namespaces para librerías antiguas
                val getNamespace = android.javaClass.getMethod("getNamespace")
                val currentNamespace = getNamespace.invoke(android)

                if (currentNamespace == null) {
                    val setNamespace = android.javaClass.getMethod("setNamespace", String::class.java)
                    setNamespace.invoke(android, project.group.toString())
                    println("Parche aplicado: Namespace y SDK 36 asignado a ${project.name}")
                }
            } catch (e: Exception) {
                // Si alguna librería no es compatible con el cast, fallará silenciosamente aquí
            }
        }
    }
}

// ---------------------------------------------------

subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}