Feature: US02 - Inicio de sesión
  Como usuario registrado
  Quiero poder iniciar sesión en la plataforma
  Para acceder a mi perfil y mis funcionalidades personalizadas

Scenario: El usuario ingresa sus credenciales correctamente
  Given que el usuario se encuentra en la pantalla de inicio de sesión
  When el usuario ingresa su correo y contraseña válidos
  And presiona el botón "Iniciar sesión"
  Then el sistema debe validar las credenciales
  And permitir el acceso a la cuenta
  And redirigir al usuario al panel principal

Examples:
| INPUT |
| Correo: "u20241234@upc.edu.pe", Contraseña: "password123" |
| Acción: Clic en el botón "Iniciar sesión" |

| OUTPUT |
| Redirección: A la pantalla 'Panel Principal' |
| Mensaje (Opcional): "Inicio de sesión exitoso" |


Scenario: El usuario ingresa una contraseña incorrecta
  Given que el usuario se encuentra en la pantalla de inicio de sesión
  When el usuario ingresa su correo válido pero una contraseña incorrecta
  And presiona el botón "Iniciar sesión"
  Then el sistema debe mostrar un mensaje de error
  And no debe permitir el acceso a la cuenta

Examples:
| INPUT |
| Correo: "u20241234@upc.edu.pe", Contraseña: "password999" |
| Acción: Clic en el botón "Iniciar sesión" |

| OUTPUT |
| Mensaje de error: "Correo o contraseña incorrectos" |


Scenario: El usuario deja campos vacíos
  Given que el usuario está en la pantalla de inicio de sesión
  When el usuario deja el correo o la contraseña vacíos
  And presiona el botón "Iniciar sesión"
  Then el sistema no debe permitir el acceso
  And debe mostrar un mensaje indicando que complete los campos requeridos

Examples:
| INPUT |
| Correo: "", Contraseña: "" |
| Acción: Clic en el botón "Iniciar sesión" |

| OUTPUT |
| Mensaje de error: "Complete todos los campos" |


Scenario: El usuario ingresa un correo con formato inválido
  Given que el usuario está en la pantalla de inicio de sesión
  When el usuario ingresa un correo con formato incorrecto
  And presiona el botón "Iniciar sesión"
  Then el sistema no debe validar el intento de inicio
  And debe mostrar el mensaje de error "Correo inválido"

Examples:
| INPUT |
| Correo: "usuario@correo", Contraseña: "password123" |
| Acción: Clic en el botón "Iniciar sesión" |

| OUTPUT |
| Mensaje de error: "Correo inválido" |
