# Plan de Mantenimiento

Estrategia para conservar la calidad, la escalabilidad y la trazabilidad del proyecto a lo largo del tiempo.

## Objetivos

- Mantener la arquitectura Clean Architecture + DDD sin acoplar capas.
- Detectar regresiones antes de integrar cambios.
- Documentar cada cambio notable en el changelog.
- Facilitar el onboarding de nuevos integrantes del equipo.

## Ciclo de vida del cambio

1. **Planificar:** definir alcance y capa afectada (Presentation, Domain o Data).
2. **Implementar:** respetar límites de capas (UI/BLoC → Use Cases → Repositorios → Data Sources).
3. **Verificar:** ejecutar análisis estático y pruebas antes del commit.
4. **Documentar:** actualizar `CHANGELOD.md` y, si aplica, los diagramas en `docs/`.
5. **Integrar:** merge a `develop` / `main` solo con checks en verde.

## Checklist previo a cada commit

- [ ] `flutter analyze` sin errores ni warnings nuevos.
- [ ] `flutter test` pasando (unitarias y de widgets).
- [ ] Sin lógica de negocio en widgets ni dependencias de frameworks en Domain.
- [ ] Changelog actualizado si el cambio es notable para el usuario o el equipo.
- [ ] Diagramas (`arquitectura.md`, `navegacion.md`) alineados si cambió el flujo o la estructura.

## Tipos de mantenimiento

| Tipo | Ejemplo | Acción recomendada |
|------|---------|--------------------|
| Correctivo | Bug en UI o en un use case | Reproducir, cubrir con test, corregir en la capa correcta |
| Adaptativo | Nueva versión de Flutter/Dart o de un paquete | Actualizar dependencias, correr analyze/test, ajustar breaking changes |
| Perfectivo | Mejora de rendimiento o DX | Refactor controlado, sin cambiar contratos públicos innecesariamente |
| Preventivo | Deuda técnica detectada en analyze | Resolver warnings, fortalecer tests, revisar límites de arquitectura |

## Versionado

El proyecto sigue [Semantic Versioning](https://semver.org/lang/es/):

- **MAJOR:** cambios incompatibles (contratos de API, flujos de navegación rotos).
- **MINOR:** nuevas funcionalidades compatibles hacia atrás.
- **PATCH:** correcciones y ajustes menores.

Cada release publicado debe reflejarse en `CHANGELOD.md` moviendo entradas de `[Unreleased]` a una versión fechada.

## Responsabilidades del equipo

- **Desarrollador:** implementa, prueba en local y actualiza documentación afectada.
- **Revisor:** valida arquitectura, cobertura de pruebas y claridad del changelog.
- **Mantenedor:** libera versiones, vigila dependencias y deuda técnica.

## Cadencia sugerida

| Actividad | Frecuencia |
|-----------|------------|
| Analyze + test antes de commit | Cada cambio |
| Revisión de dependencias (`flutter pub outdated`) | Quincenal |
| Revisión de deuda técnica y warnings | Mensual |
| Actualización de diagramas y README | Cuando cambie arquitectura o flujo |
| Release y cierre de changelog | Al publicar una versión |

## Criterios de salida (Definition of Done)

Un cambio se considera listo cuando:

1. Cumple el checklist previo a commit.
2. No introduce acoplamiento entre capas.
3. Está documentado si es un cambio notable.
4. Puede ser entendido por otro miembro del equipo sin contexto oral adicional.
