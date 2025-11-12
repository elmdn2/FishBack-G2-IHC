Feature: US08 - Inicio de Sesión con Cuenta de Google
  Como usuario
  Quiero poder iniciar sesión utilizando mi cuenta de Google
  Para acceder de forma rápida y segura sin necesidad de crear una cuenta manualmente

Scenario: Inicio de sesión exitoso con Google
  Given que el sistema ofrece la opción de autenticación mediante Google
  When el usuario selecciona “Iniciar sesión con Google” y autoriza el acceso
  Then el sistema autentica las credenciales a través de Google
  And permite el ingreso inmediato a la plataforma
  And carga el perfil vinculado del usuario

Examples:
| INPUT |
| Opción seleccionada: "Iniciar sesión con Google" |
| Acción: Autorización de acceso en Google |

| OUTPUT |
| Acceso concedido: Sí |
| Perfil cargado: Sí |
| Mensaje de bienvenida (Opcional): "Bienvenido [Nombre]" |

Scenario: Usuario cancela autorización de Google
  Given que el usuario selecciona “Iniciar sesión con Google”
  When decide cancelar la autorización en la ventana de Google
  Then el sistema debe mantenerlo en la pantalla de inicio de sesión
  And mostrar un mensaje de aviso

Examples:
| INPUT |
| Opción seleccionada: "Iniciar sesión con Google" |
| Acción: Cancelar autorización |

| OUTPUT |
| Acceso concedido: No |
| Mensaje: "No se pudo iniciar sesión. Autorización cancelada." |

Scenario: Error en autenticación con Google
  Given que el usuario selecciona “Iniciar sesión con Google”
  When ocurre un error en la autenticación externa de Google
  Then el sistema debe mostrar un mensaje de error
  And permitir reintentar iniciar sesión

Examples:
| INPUT |
| Opción seleccionada: "Iniciar sesión con Google" |
| Error: Problema de conexión o credenciales inválidas |

| OUTPUT |
| Acceso concedido: No |
| Mensaje: "Error al autenticar con Google. Intente nuevamente." |
| Acción sugerida: Reintentar iniciar sesión |
