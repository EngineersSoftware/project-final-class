# Changelog
Todos los cambios notables de este proyecto se documentarán en este archivo.
El formato está basado en [Keep a Changelog](https://keepachangelog.com/es-ES/1.0.0/),
y este proyecto se adhiere a [Semantic Versioning](https://semver.org/lang/es/).

## [Unreleased]

## [1.1.0] - 2026-07-27
### Añadido (Added)
- Feature `access` en la capa Domain: entidad `AccessRecord` con `AccessType` (`entry` / `exit`), igualdad por valor vía Equatable.
- Caso de uso `RegisterEntry` para registrar entrada de empleados, con reglas de negocio:
  - rechaza empleados inactivos o suspendidos;
  - evita entradas duplicadas si ya hay una entrada en los últimos 5 minutos.
- Estructura inicial del módulo por feature: `lib/features/access/domain/`.

### Corregido (Fixed)
- Cierre correcto del bloque Mermaid en el diagrama de arquitectura (`docs/arquitectura.md`).

## [1.0.1] - 2026-07-20
### Añadido (Added)
- Índice de documentación en `docs/README.md` con guía para visualizar diagramas Mermaid y enlace al plan de mantenimiento.
- Enlace desde el README principal hacia la carpeta `docs/`.
- Plan de mantenimiento en `docs/plan_mantenimiento.md` (ciclo de cambios, checklist pre-commit, tipos de mantenimiento, versionado y Definition of Done).

### Corregido (Fixed)
- Cierre correcto del bloque Mermaid en el diagrama de navegación (`docs/navegacion.md`).

## [1.0.0] - 2026-07-20
### Añadido (Added)
- Configuración inicial del proyecto Flutter en `pubspec.yaml` (app `mi_aplicacion_limpia`, versión `1.0.0+1`).
- README del proyecto con descripción de Clean Architecture + DDD, requisitos, instalación y comandos de calidad (`flutter analyze` / `flutter test`).
- Diagrama de capas Clean Architecture (Presentation, Domain, Data) en `docs/arquitectura.md`.
- Diagrama de flujo de navegación (Splash → Login/Home → Detalle) en `docs/navegacion.md`.
- Plantilla de changelog siguiendo Keep a Changelog y Semantic Versioning.
