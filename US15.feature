Feature: US15 - Fuente legible y accesible
  Como visitante
  Quiero que el landing page utilice una fuente clara y accesible
  Para que el contenido sea legible incluso para personas con dislexia

Scenario: Visualización general de la fuente en la landing page
  Given que la página carga correctamente su contenido textual
  When el visitante lee los textos del landing page
  Then los textos deben mostrarse con una fuente clara, legible y consistente
  And el tamaño, el espaciado y el contraste deben facilitar la lectura y comprensión

Examples:
| INPUT |
| Estado: Página cargada correctamente |
| Acción: Lectura del contenido textual |

| OUTPUT |
| Fuente: Clara y legible |
| Tamaño: Adecuado |
| Contraste: Correcto |
| Consistencia: Mantiene el mismo estilo en todo el sitio |

Scenario: Accesibilidad para usuarios con dislexia
  Given que el visitante presenta dificultades de lectura o dislexia
  When accede al landing page
  Then la tipografía debe mantener características accesibles (por ejemplo, sin serifas y con buen espaciado)
  And los textos deben evitar combinaciones de colores o estilos que dificulten la lectura

Examples:
| INPUT |
| Condición del usuario: Dislexia |
| Acción: Acceder y leer contenido textual |

| OUTPUT |
| Fuente accesible: Sí |
| Legibilidad: Alta |
| Uso de serifas: No |
| Contraste texto-fondo: Apto |

Scenario: Verificación de coherencia tipográfica
  Given que el visitante navega entre diferentes secciones del landing page
  When visualiza los textos de cada una
  Then la fuente utilizada debe ser coherente en estilo, tamaño y color
  And no debe haber cambios abruptos que afecten la experiencia de lectura

Examples:
| INPUT |
| Acción: Navegar entre secciones del landing page |

| OUTPUT |
| Consistencia tipográfica: Sí |
| Cambios abruptos: No |
| Legibilidad mantenida: Sí |
