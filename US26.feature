Feature: US26 - Atajo en encabezado a "Servicios"
  Como visitante
  Quiero que el encabezado tenga un atajo a la sección "Nuestros Servicios"
  Para acceder rápidamente a la información de lo que ofrece FishBack

Scenario: Navegación a "Nuestros Servicios" mediante atajo en encabezado
  Given que el encabezado incluye un atajo a la sección "Servicios"
  When el visitante hace clic en el atajo
  Then la página se desplazará automáticamente hasta la sección "Nuestros Servicios"
  And la sección debe ser visible y legible tras el desplazamiento

Examples:
| INPUT |
| Acción: Clic en el atajo "Servicios" en el encabezado |

| OUTPUT |
| Desplazamiento automático: Sí |
| Sección "Nuestros Servicios" visible: Sí |
| Legibilidad: Correcta |
| Experiencia de usuario: Fluida |

Scenario: Verificación de funcionalidad en distintos dispositivos
  Given que el visitante accede desde diferentes dispositivos (desktop, tablet, smartphone)
  When hace clic en el atajo "Servicios" en el encabezado
  Then la página debe desplazarse correctamente hasta la sección en todos los dispositivos
  And la sección debe mantenerse legible y accesible

Examples:
| INPUT |
| Dispositivo: Desktop / Tablet / Smartphone |
| Acción: Clic en atajo "Servicios" |

| OUTPUT |
| Desplazamiento automático: Correcto en todos los dispositivos |
| Sección visible: Sí |
| Legibilidad: Mantiene claridad |
