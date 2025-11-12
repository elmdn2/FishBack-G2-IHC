Feature: US06 - Barra fija de registro/login
  Como usuario nuevo
  Quiero visualizar en todo momento una barra fija en la parte inferior con opciones para iniciar sesión o registrarme
  Para tener acceso inmediato a la autenticación desde cualquier parte del sitio, sin necesidad de desplazarse hasta el inicio

Scenario: Visualización de la barra fija
  Given que el usuario accede al sitio sin haber iniciado sesión
  When carga cualquier página del sitio
  Then la barra fija inferior con las opciones “Iniciar Sesión” y “Registrarme” debe mostrarse en la parte inferior de la pantalla

Examples:
| INPUT |
| Estado del usuario: No autenticado |
| Acción: Cargar cualquier página del sitio |

| OUTPUT |
| Barra fija visible en la parte inferior |
| Opciones mostradas: “Iniciar Sesión” y “Registrarme” |


Scenario: Acceso al formulario de registro
  Given que el usuario visualiza la barra fija inferior
  When presiona el botón “Registrarme”
  Then el sistema debe redirigirlo al formulario de registro

Examples:
| INPUT |
| Acción: Clic en el botón “Registrarme” |
| Estado del usuario: No autenticado |

| OUTPUT |
| Redirección: A la pantalla de registro |
| Barra fija permanece visible durante la transición |


Scenario: Acceso al formulario de inicio de sesión
  Given que el usuario visualiza la barra fija inferior
  When presiona el botón “Iniciar Sesión”
  Then el sistema debe redirigirlo al formulario de inicio de sesión

Examples:
| INPUT |
| Acción: Clic en el botón “Iniciar Sesión” |
| Estado del usuario: No autenticado |

| OUTPUT |
| Redirección: A la pantalla de inicio de sesión |
| Barra fija permanece visible durante la transición |


Scenario: Ocultamiento de la barra tras autenticación
  Given que el usuario ha iniciado sesión correctamente
  When se carga nuevamente cualquier página del sitio
  Then la barra fija inferior no debe mostrarse

Examples:
| INPUT |
| Estado del usuario: Autenticado |
| Acción: Cargar cualquier página |

| OUTPUT |
| Barra fija: No visible |
| Acceso directo a funcionalidades personalizadas |


Scenario: Reaparición de la barra tras cierre de sesión
  Given que el usuario ha cerrado sesión
  When se carga nuevamente cualquier página del sitio
  Then la barra fija inferior debe volver a mostrarse con las opciones “Iniciar Sesión” y “Registrarme”

Examples:
| INPUT |
| Estado del usuario: Sesión cerrada |
| Acción: Cargar cualquier página del sitio |

| OUTPUT |
| Barra fija visible nuevamente en la parte inferior |
| Opciones mostradas: “Iniciar Sesión” y “Registrarme” |
