Feature: US28 - Atajo en encabezado a "Contacto"
  Como visitante
  Quiero que el encabezado tenga un atajo a la sección "Contacto"
  Para acceder fácilmente al formulario y comunicarme con el equipo

Scenario: Navegación a "Contacto" mediante atajo en encabezado
  Given que el encabezado incluye un atajo a la sección "Contacto"
  When el visitante hace clic en el atajo
  Then la página se desplazará automáticamente hasta la sección "Contacto"
  And el formulario debe ser visible y legible tras el desplazamiento

Examples:
| INPUT |
| Acción: Clic en el atajo "Contacto" en el encabezado |

| OUTPUT |
| Desplazamiento automático: Sí |
| Sección "Contacto" visible: Sí |
| Legibilidad: Correcta |
| Experiencia de usuario: Fluida |

Scenario: Verificación de funcionalidad en distintos dispositivos
  Given que el visitante accede desde diferentes dispositivos (desktop, tablet, smartphone)
  When hace clic en el atajo "Contacto" en el encabezado
  Then la página debe desplazarse correctamente hasta la sección en todos los dispositivos
  And el formulario debe mantenerse legible y accesible

Examples:
| INPUT |
| Dispositivo: Desktop / Tablet / Smartphone |
| Acción: Clic en atajo "Contacto" |

| OUTPUT |
| Desplazamiento automático: Correcto en todos los dispositivos |
| Sección visible: Sí |
| Legibilidad: Mantiene claridad |
