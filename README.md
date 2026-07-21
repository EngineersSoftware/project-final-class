# 📱 Mi Aplicación Profesional (Flutter)

Aplicación desarrollada en Flutter aplicando buenas prácticas de ingeniería de software, diseñada para ser escalable y mantenible por un equipo de desarrollo.

## 🏗️ Arquitectura
El proyecto utiliza **Clean Architecture** combinada con los principios de **Domain-Driven Design (DDD)**. 
- **Domain:** Lógica de negocio (Entities, Use Cases, Repository Interfaces).
- **Data:** Implementación técnica (Models, Repository Implementations, Data Sources).
- **Presentation:** Interfaz de usuario y gestión de estado (Widgets y BLoC).

Consulta los diagramas en la carpeta [`docs/`](./docs/README.md).

## ⚙️ Requisitos Previos
- Flutter SDK (v3.22.0 o superior)
- Dart SDK (v3.4.0 o superior)

## 🚀 Instalación y Ejecución
1. Clona el repositorio: `git clone https://github.com/tu-usuario/tu-repo.git`
2. Instala las dependencias: `flutter pub get`
3. Ejecuta la aplicación: `flutter run`

## 🧪 Pruebas y Calidad de Código
Para asegurar la calidad del código, antes de cada commit ejecuta:
- Análisis estático: `flutter analyze`
- Pruebas unitarias y de widgets: `flutter test`