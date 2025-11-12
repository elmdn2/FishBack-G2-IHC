Feature: US19 - Uso de SVG en íconos e imágenes pequeñas
  Como visitante
  Quiero que las imágenes pequeñas y los íconos del landing page usen formato SVG
  Para que carguen más rápido y consuman menos memoria

Scenario: Verificación de formato de íconos y pequeñas imágenes
  Given que el visitante navega por el landing page
  When se cargan los íconos e imágenes pequeñas
  Then todos los íconos e imágenes pequeñas deben estar implementados en formato SVG
  And no deben usarse formatos PNG o JPG en estos elementos

Examples:
| INPUT |
| Acción: Cargar la página y observar íconos e imágenes pequeñas |

| OUTPUT |
| Formato de imagen: SVG |
| Formato PNG/JPG: No presente |
| Rendimiento: Optimizado para carga rápida y menor consumo de memoria |

Scenario: Rendimiento de carga de imágenes
  Given que el visitante accede al landing page
  When se cargan los íconos e imágenes pequeñas en formato SVG
  Then la página debe cargarse más rápido que si se usaran PNG o JPG
  And el consumo de memoria y recursos debe ser menor

Examples:
| INPUT |
| Acción: Cargar página con imágenes SVG |

| OUTPUT |
| Tiempo de carga: Optimizado |
| Consumo de memoria: Reducido |
| Experiencia de usuario: Fluida |

Scenario: Accesibilidad de íconos SVG
  Given que el visitante utiliza un lector de pantalla o navega por la página
  When el lector recorre íconos implementados en SVG
  Then cada ícono debe mantener sus atributos alt o título para accesibilidad
  And el contenido visual debe ser comprensible incluso si el SVG no se renderiza

Examples:
| INPUT |
| Acción: Navegar por íconos SVG con lector de pantalla |

| OUTPUT |
| Atributos accesibles: Sí (alt/title) |
| Comprensión del contenido: Sí |
| Rendimiento optimizado: Sí |
