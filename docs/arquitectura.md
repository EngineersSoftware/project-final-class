# Diagrama de Clean Architecture

```mermaid
graph TD
    A[Presentation Layer<br/>UI & BLoC] -->|Llama a| B(Domain Layer<br/>Use Cases)
    C[Data Layer<br/>APIs & DB] -->|Implementa| D(Domain Layer<br/>Repository Interfaces)
    B --> E((Entities<br/>Reglas de Negocio))
    D --> E