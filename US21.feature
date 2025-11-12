Feature: US21 - Sección "Nuestros Servicios"
  Como visitante
  Quiero ver una sección de "Nuestros Servicios" en el landing page
  Para conocer los principales servicios que ofrece FishBack de forma clara y resumida

Scenario: Visualización de la sección "Nuestros Servicios"
  Given que el visitante navega por el landing page
  When llega a la sección "Nuestros Servicios"
  Then debe visualizar los principales servicios del startup
  And cada servicio debe tener una descripción clara y resumida
  And los elementos deben estar organizados de manera visualmente comprensible

Examples:
| INPUT |
| Acción: Desplazarse hasta la sección "Nuestros Servicios" |

| OUTPUT |
| Servicios visibles: Sí |
| Descripción de cada servicio: Clara y resumida |
| Organización visual: Comprensible |
| Experiencia de usuario: Informativa |

Scenario: Interacción con elementos de la sección
  Given que el visitante visualiza la sección "Nuestros Servicios"
  When hace clic en un servicio para ver más información (si aplica)
  Then el sistema debe mostrar información adicional o detalles de manera clara
  And mantener la coherencia visual con el diseño del landing page

Examples:
| INPUT |
| Acción: Clic en servicio para más información |

| OUTPUT |
| Información adicional visible: Sí |
| Claridad de la información: Mantiene legibilidad |
| Diseño coherente: Sí |

Scenario: Verificación de accesibilidad en la sección
  Given que el visitante utiliza un lector de pantalla o ajusta zoom
  When recorre la sección "Nuestros Servicios"
  Then todos los servicios y descripciones deben ser accesibles y legibles
  And la jerarquía de títulos y texto debe facilitar la comprensión

Examples:
| INPUT |
| Herramienta: Lector de pantalla / Ajuste de zoom |
| Acción: Navegar por la sección |

| OUTPUT |
| Accesibilidad: Sí |
| Legibilidad: Mantiene claridad |
| Jerarquía de contenido: Correcta |
