Feature: US03 - Recordar sesión
  Como usuario frecuente
  Quiero poder marcar una casilla de "Recordar sesión" al iniciar sesión
  Para evitar ingresar mis credenciales cada vez que acceda desde el mismo dispositivo

Scenario: El usuario marca la casilla "Recordar sesión" e inicia sesión correctamente
  Given que el usuario está en la pantalla de inicio de sesión
  And marca la casilla "Recordar sesión"
  When ingresa su correo y contraseña válidos
  And presiona el botón "Iniciar sesión"
  Then el sistema debe mantener activa la sesión del usuario
  And permitir que acceda automáticamente en futuros ingresos desde el mismo dispositivo
  And redirigirlo al panel principal

Examples:
| INPUT |
| Correo: "u20241234@upc.edu.pe", Contraseña: "password123" |
| Casilla: "Recordar sesión" marcada |
| Acción: Clic en el botón "Iniciar sesión" |

| OUTPUT |
| Redirección: A la pantalla 'Panel Principal' |
| Sesión persistente: Activa incluso tras cerrar el navegador |
| Mensaje (Opcional): "Sesión recordada exitosamente" |


Scenario: El usuario no marca la casilla "Recordar sesión"
  Given que el usuario está en la pantalla de inicio de sesión
  And deja sin marcar la casilla "Recordar sesión"
  When ingresa su correo y contraseña válidos
  And presiona el botón "Iniciar sesión"
  Then el sistema debe iniciar la sesión normalmente
  But cerrar la sesión al salir del navegador

Examples:
| INPUT |
| Correo: "u20241234@upc.edu.pe", Contraseña: "password123" |
| Casilla: "Recordar sesión" no marcada |
| Acción: Clic en el botón "Iniciar sesión" |

| OUTPUT |
| Redirección: A la pantalla 'Panel Principal' |
| Sesión: Finaliza al cerrar el navegador |


Scenario: El usuario marca la casilla "Recordar sesión" pero las credenciales son incorrectas
  Given que el usuario está en la pantalla de inicio de sesión
  And marca la casilla "Recordar sesión"
  When ingresa un correo o contraseña incorrectos
  And presiona el botón "Iniciar sesión"
  Then el sistema no debe permitir el acceso
  And no debe guardar la sesión en el dispositivo
  And debe mostrar un mensaje de error

Examples:
| INPUT |
| Correo: "u20241234@upc.edu.pe", Contraseña: "incorrecta123" |
| Casilla: "Recordar sesión" marcada |
| Acción: Clic en el botón "Iniciar sesión" |

| OUTPUT |
| Mensaje de error: "Correo o contraseña incorrectos" |
| Sesión: No recordada |
