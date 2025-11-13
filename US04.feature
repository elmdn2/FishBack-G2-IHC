Feature: US04 - Recuperar contraseña
  Como usuario registrado
  Quiero recuperar mi contraseña en caso de olvidarla
  Para volver a acceder a la plataforma

Scenario: El usuario ingresa un correo válido para recuperar su contraseña
  Given que el usuario está en la pantalla de recuperación de contraseña
  When ingresa un correo válido asociado a una cuenta registrada
  And presiona el botón "Recuperar contraseña"
  Then el sistema debe enviar un enlace o código de restablecimiento al correo del usuario
  And mostrar un mensaje confirmando el envío

Examples:
| INPUT |
| Correo: "u20241234@upc.edu.pe" |
| Acción: Clic en el botón "Recuperar contraseña" |

| OUTPUT |
| Mensaje: "Se ha enviado un enlace de recuperación a su correo" |
| Enlace de restablecimiento: Enviado correctamente |


Scenario: El usuario ingresa un correo no registrado
  Given que el usuario está en la pantalla de recuperación de contraseña
  When ingresa un correo que no está asociado a ninguna cuenta
  And presiona el botón "Recuperar contraseña"
  Then el sistema no debe enviar ningún enlace
  And debe mostrar un mensaje de error indicando que el correo no está registrado

Examples:
| INPUT |
| Correo: "usuarioinexistente@upc.edu.pe" |
| Acción: Clic en el botón "Recuperar contraseña" |

| OUTPUT |
| Mensaje de error: "El correo ingresado no está registrado" |


Scenario: El usuario deja el campo de correo vacío
  Given que el usuario está en la pantalla de recuperación de contraseña
  When deja el campo de correo vacío
  And presiona el botón "Recuperar contraseña"
  Then el sistema no debe procesar la solicitud
  And debe mostrar un mensaje indicando que ingrese un correo válido

Examples:
| INPUT |
| Correo: "" |
| Acción: Clic en el botón "Recuperar contraseña" |

| OUTPUT |
| Mensaje de error: "Ingrese un correo válido" |


Scenario: El usuario intenta usar un enlace de recuperación expirado
  Given que el usuario ha recibido un enlace de recuperación de contraseña
  When intenta acceder al enlace después de su fecha de expiración
  Then el sistema debe rechazar la solicitud
  And mostrar un mensaje indicando que el enlace ha expirado

Examples:
| INPUT |
| Enlace de recuperación: Expirado |
| Acción: Clic en el enlace recibido |

| OUTPUT |
| Mensaje de error: "El enlace ha expirado, solicite uno nuevo" |
