Feature: US16 - Pie de página con información
  Como visitante
  Quiero que el landing page tenga un pie de página con información del startup y enlaces a redes sociales
  Para conocer más sobre la empresa

Scenario: Visualización del pie de página
  Given que el visitante llega al final de la landing page
  When visualiza el pie de página
  Then debe ver la información del startup (nombre, descripción breve o lema)
  And los enlaces a las redes sociales oficiales
  And los iconos o textos de las redes deben ser claros y funcionales

Examples:
| INPUT |
| Acción: Desplazarse al final de la página |

| OUTPUT |
| Información del startup: Visible |
| Enlaces a redes sociales: Presentes |
| Iconos o textos: Claros y accesibles |
| Legibilidad: Correcta |

Scenario: Acceso a redes sociales desde el pie de página
  Given que el visitante visualiza el pie de página
  When hace clic en un icono o enlace de red social
  Then el sistema debe redirigirlo correctamente a la página oficial de la red correspondiente
  And la redirección debe abrirse en una nueva pestaña o ventana

Examples:
| INPUT |
| Acción: Clic en icono de red social (Facebook, Instagram, LinkedIn, etc.) |

| OUTPUT |
| Redirección: Correcta a la red social oficial |
| Apertura: Nueva pestaña o ventana |
| Mensaje (Opcional): "Abriendo perfil oficial de [nombre de la red]" |

Scenario: Verificación de integridad del pie de página
  Given que el visitante navega por distintas secciones del landing page
  When regresa al final de la página
  Then el pie de página debe mantenerse visible y coherente
  And los enlaces y textos deben conservar su funcionalidad y formato

Examples:
| INPUT |
| Acción: Navegar por distintas secciones y volver al final |

| OUTPUT |
| Pie de página: Presente y funcional |
| Consistencia visual: Sí |
| Enlaces operativos: Sí |
