Feature: US01 - Registro de usuarios
  Como usuario
  Quiero poder registrarme en la plataforma
  Para acceder a las funciones de FishBack de manera personalizada

Scenario: El usuario completa correctamente el formulario de registro
  Given que el usuario se encuentra en la pantalla de Registro
  When el usuario llena todos los campos requeridos con datos válidos
  And presiona el botón "Registrar"
  Then el sistema debe crear la cuenta exitosamente
  And redirigir al usuario a la pantalla de inicio de sesión
  And mostrar el mensaje "Registro exitoso"

Examples:
| INPUT |
| Nombres: "Juan", Apellidos: "Pérez", Correo: "u20241234@upc.edu.pe", Contraseña: "password123" |
| Acción: Clic en el botón "Registrar" |

| OUTPUT |
| Redirección: A la pantalla 'Iniciar Sesión' |
| Mensaje (Opcional): "Registro exitoso" |


Scenario: El usuario deja campos obligatorios vacíos
  Given que el usuario está en la pantalla de Registro
  When el usuario deja uno o más campos requeridos vacíos
  And presiona el botón "Registrar"
  Then el sistema no debe crear la cuenta
  And debe mostrar un mensaje de error indicando los campos faltantes

Examples:
| INPUT |
| Nombres: "", Apellidos: "Pérez", Correo: "", Contraseña: "password123" |
| Acción: Clic en el botón "Registrar" |

| OUTPUT |
| Mensaje de error: "Complete todos los campos" |


Scenario: El usuario ingresa un correo con formato inválido
  Given que el usuario está en la pantalla de Registro
  When el usuario ingresa un correo con formato incorrecto
  And presiona el botón "Registrar"
  Then el sistema no debe permitir el registro
  And debe mostrar el mensaje de error "Correo inválido"

Examples:
| INPUT |
| Correo: "usuario@correo", Contraseña: "password123" |
| Acción: Clic en el botón "Registrar" |

| OUTPUT |
| Mensaje de error: "Correo inválido" |


Scenario: El usuario ingresa una contraseña insegura
  Given que el usuario está en la pantalla de Registro
  When el usuario ingresa una contraseña con menos de 8 caracteres
  And presiona el botón "Registrar"
  Then el sistema no debe permitir el registro
  And debe mostrar el mensaje de error "La contraseña debe tener al menos 8 caracteres"

Examples:
| INPUT |
| Contraseña: "abc12" |
| Acción: Clic en el botón "Registrar" |

| OUTPUT |
| Mensaje de error: "La contraseña debe tener al menos 8 caracteres" |