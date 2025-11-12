Feature: US18 - Texto alternativo en imágenes
  Como visitante
  Quiero que todas las imágenes del landing page tengan un atributo alt descriptivo
  Para que el contenido sea accesible y comprensible incluso si la imagen no carga

Scenario: Visualización de texto alternativo cuando la imagen no carga
  Given que el visitante navega por el landing page
  When una imagen no se carga correctamente
  Then se mostrará el texto alternativo definido en el atributo alt
  And el visitante podrá entender el contenido de la imagen a través del alt

Examples:
| INPUT |
| Acción: Imagen no disponible / falla de carga |

| OUTPUT |
| Texto alternativo visible: Sí |
| Descripción del alt: Corresponde al contenido de la imagen |
| Legibilidad: Correcta |

Scenario: Accesibilidad mediante lector de pantalla
  Given que el visitante utiliza un lector de pantalla
  When el lector recorre las imágenes del landing page
  Then se leerá el texto alternativo definido en cada atributo alt
  And el visitante comprenderá el contenido de la imagen mediante la descripción

Examples:
| INPUT |
| Herramienta: Lector de pantalla |
| Acción: Recorrer imágenes del landing page |

| OUTPUT |
| Texto alternativo leído: Sí |
| Descripción accesible: Correcta |
| Comprensión del contenido: Sí |

Scenario: Verificación de existencia de atributos alt en todas las imágenes
  Given que el visitante navega por todas las secciones del landing page
  When se inspeccionan las imágenes presentes
  Then cada imagen debe tener un atributo alt descriptivo
  And ningún alt debe estar vacío o genérico

Examples:
| INPUT |
| Acción: Inspección de imágenes del landing page |

| OUTPUT |
| Atributo alt presente en todas las imágenes: Sí |
| Descripción del alt: Descriptiva y adecuada |
| Cumplimiento accesibilidad: Sí |
