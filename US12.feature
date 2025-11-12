Feature: US12 - Encabezado con atajos
  Como visitante
  Quiero que el encabezado tenga accesos directos a distintas secciones
  Para navegar fácilmente dentro del landing page

Scenario: Visualización de atajos en el encabezado
  Given que la landing page carga correctamente
  When el visitante visualiza el encabezado
  Then el visitante debe ver los atajos a las secciones principales
  And los atajos deben ser visibles y legibles
  And los atajos deben indicar claramente a qué sección llevan

Examples:
| INPUT |
| Estado: Página cargada correctamente |
| Acción: Visualizar encabezado |

| OUTPUT |
| Atajos visibles: Sí |
| Secciones enlazadas: Principales de la landing page |
| Legibilidad: Correcta |
| Interactividad: Al hacer clic, redirige a la sección correspondiente |

Scenario: Navegación usando atajos del encabezado
  Given que el visitante visualiza los atajos en el encabezado
  When hace clic en un atajo
  Then el sistema debe llevarlo a la sección correspondiente de la landing page
  And el desplazamiento debe ser fluido y sin errores

Examples:
| INPUT |
| Acción: Clic en atajo del encabezado |

| OUTPUT |
| Redirección a sección: Correcta |
| Experiencia de usuario: Fluida |
| Mensaje (Opcional): "Sección cargada" |
