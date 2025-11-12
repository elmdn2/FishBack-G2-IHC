Feature: US09 - Inicio de Sesión con Cuenta de Facebook
  Como usuario
  Quiero poder iniciar sesión utilizando mi cuenta de Facebook
  Para acceder de forma rápida y segura sin necesidad de crear una cuenta manualmente

Scenario: Inicio de sesión exitoso con Facebook
  Given que el sistema ofrece la opción de autenticación mediante Facebook
  When el usuario selecciona “Iniciar sesión con Facebook” y autoriza el acceso
  Then el sistema autentica las credenciales a través de Facebook
  And permite el ingreso inmediato a la plataforma
  And carga el perfil vinculado del usuario

Examples:
| INPUT |
| Opción seleccionada: "Iniciar sesión con Facebook" |
| Acción: Autorización de acceso en Facebook |

| OUTPUT |
| Acceso concedido: Sí |
| Perfil cargado: Sí |
| Mensaje de bienvenida (Opcional): "Bienvenido [Nombre]" |

Scenario: Usuario cancela autorización de Facebook
  Given que el usuario selecciona “Iniciar sesión con Facebook”
  When decide cancelar la autorización en la ventana de Facebook
  Then el sistema debe mantenerlo en la pantalla de inicio de sesión
  And mostrar un mensaje de aviso

Examples:
| INPUT |
| Opción seleccionada: "Iniciar sesión con Facebook" |
| Acción: Cancelar autorización |

| OUTPUT |
| Acceso concedido: No |
| Mensaje: "No se pudo iniciar sesión. Autorización cancelada." |

Scenario: Error en autenticación con Facebook
  Given que el usuario selecciona “Iniciar sesión con Facebook”
  When ocurre un error en la autenticación externa de Facebook
  Then el sistema debe mostrar un mensaje de error
  And permitir reintentar iniciar sesión

Examples:
| INPUT |
| Opción seleccionada: "Iniciar sesión con Facebook" |
| Error: Problema de conexión o credenciales inválidas |

| OUTPUT |
| Acceso concedido: No |
| Mensaje: "Error al autenticar con Facebook. Intente nuevamente." |
| Acción sugerida: Reintentar iniciar sesión |
