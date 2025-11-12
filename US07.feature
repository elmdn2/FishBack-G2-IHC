Feature: US07 - Acceso como Invitado
  Como usuario nuevo o visitante ocasional
  Quiero poder acceder a la aplicación como invitado sin necesidad de iniciar sesión
  Para explorar las funciones básicas del sistema antes de registrarme

Scenario: Acceso exitoso como invitado
  Given que el sistema ofrece la opción de acceso como invitado
  When el visitante selecciona la opción “Entrar como invitado”
  Then el sistema debe permitir el ingreso a la plataforma
  And habilitar la navegación por secciones informativas y públicas
  And mostrar ubicaciones de puntos de venta y tipos de productos disponibles
  Without requerir autenticación o creación de cuenta

Examples:
| INPUT |
| Estado del usuario: No registrado / No autenticado |
| Acción: Clic en el botón “Entrar como invitado” |

| OUTPUT |
| Acceso concedido a secciones informativas |
| Visualización: Puntos de venta y tipos de productos |
| Restricción: Sin acceso a funciones personalizadas |
| Mensaje (Opcional): "Explorando como invitado" |


Scenario: El visitante intenta acceder a funciones restringidas
  Given que el usuario ingresó como invitado
  When intenta acceder a una función que requiere autenticación (por ejemplo, registrar compra o dejar comentarios)
  Then el sistema debe mostrar un mensaje informando que se requiere iniciar sesión o registrarse

Examples:
| INPUT |
| Modo de acceso: Invitado |
| Acción: Intento de acceder a función restringida |

| OUTPUT |
| Mensaje: "Debe iniciar sesión o registrarse para acceder a esta función" |
| Redirección (Opcional): A la pantalla de inicio de sesión |


Scenario: Invitado decide registrarse desde la navegación
  Given que el usuario está explorando la aplicación como invitado
  When selecciona la opción “Registrarme” desde el menú o barra fija
  Then el sistema debe redirigirlo al formulario de registro

Examples:
| INPUT |
| Modo de acceso: Invitado |
| Acción: Clic en la opción “Registrarme” |

| OUTPUT |
| Redirección: A la pantalla de registro |
| Sesión invitado: Finalizada al iniciar registro |