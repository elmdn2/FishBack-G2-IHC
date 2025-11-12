Feature: US05 - Cierre de sesión
  Como usuario registrado
  Quiero poder cerrar sesión de forma segura
  Para proteger mis datos cuando termine de usar la plataforma

Scenario: El usuario cierra sesión correctamente
  Given que el usuario está autenticado en la plataforma
  When presiona el botón "Cerrar sesión"
  Then el sistema debe finalizar la sesión activa
  And redirigir al usuario a la pantalla principal de acceso
  And mostrar un mensaje confirmando el cierre de sesión

Examples:
| INPUT |
| Sesión: Activa |
| Acción: Clic en el botón "Cerrar sesión" |

| OUTPUT |
| Sesión: Finalizada correctamente |
| Redirección: A la pantalla principal de acceso |
| Mensaje: "Sesión cerrada exitosamente" |


Scenario: El usuario intenta cerrar sesión sin estar autenticado
  Given que el usuario no ha iniciado sesión
  When intenta acceder a la opción "Cerrar sesión"
  Then el sistema no debe realizar ninguna acción
  And debe redirigirlo a la pantalla de inicio de sesión

Examples:
| INPUT |
| Sesión: No iniciada |
| Acción: Intento de acceder a "Cerrar sesión" |

| OUTPUT |
| Redirección: A la pantalla 'Iniciar sesión' |
| Mensaje (Opcional): "No hay una sesión activa" |


Scenario: El usuario cierra sesión con la opción “Recordar sesión” activa
  Given que el usuario inició sesión con la opción “Recordar sesión” marcada
  When presiona el botón "Cerrar sesión"
  Then el sistema debe eliminar los datos almacenados localmente
  And finalizar completamente la sesión en el dispositivo

Examples:
| INPUT |
| Sesión: Activa con “Recordar sesión” marcada |
| Acción: Clic en el botón "Cerrar sesión" |

| OUTPUT |
| Sesión: Cerrada completamente |
| Datos de sesión recordada: Eliminados |
| Redirección: A la pantalla principal de acceso |
