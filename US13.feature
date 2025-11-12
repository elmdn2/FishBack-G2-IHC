Feature: US13 - Diseño Responsive
  Como visitante
  Quiero que la landing page tenga un diseño adaptable
  Para visualizarla correctamente en todo tipo de pantallas y dispositivos

Scenario: Visualización en pantallas grandes
  Given que el visitante accede a la landing page desde una pantalla grande
  When la página detecta el tamaño de la pantalla
  Then el diseño se ajusta manteniendo la legibilidad y la usabilidad
  And todos los elementos se muestran correctamente sin desbordes ni solapamientos

Examples:
| INPUT |
| Dispositivo: Desktop / Pantalla grande |
| Acción: Acceder a la landing page |

| OUTPUT |
| Diseño adaptado: Sí |
| Legibilidad: Correcta |
| Usabilidad: Correcta |
| Elementos visibles: Todos |

Scenario: Visualización en pantallas medianas
  Given que el visitante accede a la landing page desde una pantalla mediana
  When la página detecta el tamaño de la pantalla
  Then el diseño se ajusta manteniendo la legibilidad y la usabilidad
  And los elementos se reorganizan correctamente para el tamaño de pantalla

Examples:
| INPUT |
| Dispositivo: Tablet / Pantalla mediana |
| Acción: Acceder a la landing page |

| OUTPUT |
| Diseño adaptado: Sí |
| Legibilidad: Correcta |
| Usabilidad: Correcta |
| Elementos reorganizados: Sí |

Scenario: Visualización en pantallas pequeñas
  Given que el visitante accede a la landing page desde una pantalla pequeña
  When la página detecta el tamaño de la pantalla
  Then el diseño se ajusta manteniendo la legibilidad y la usabilidad
  And los elementos se reorganizan o colapsan adecuadamente para la visualización móvil

Examples:
| INPUT |
| Dispositivo: Smartphone / Pantalla pequeña |
| Acción: Acceder a la landing page |

| OUTPUT |
| Diseño adaptado: Sí |
| Legibilidad: Correcta |
| Usabilidad: Correcta |
| Elementos reorganizados o colapsados: Sí |
