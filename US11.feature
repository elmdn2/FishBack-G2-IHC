Feature: US11 - Inicio de Sesión con Cuenta de Apple
  Como usuario
  Quiero poder iniciar sesión utilizando mi cuenta de Apple
  Para acceder de forma rápida y segura sin necesidad de crear una cuenta manualmente

Scenario: Inicio de sesión exitoso con Apple
  Given que el sistema ofrece la opción de autenticación mediante Apple
  When el usuario selecciona “Iniciar sesión con Apple” y autoriza el acceso
  Then el sistema autentica las credenciales a través de Apple
  And permite el ingreso inmediato a la plataforma
  And carga el perfil vinculado del usuario

Examples:
| INPUT |
| Opción seleccionada: "Iniciar sesión con Apple" |
| Acción: Autorización de acceso en Apple |

| OUTPUT |
| Acceso concedido: Sí |
| Perfil cargado: Sí |
| Mensaje de bienvenida (Opcional): "Bienvenido [Nombre]" |

Scenario: Usuario cancela autorización de Apple
  Given que el usuario selecciona “Iniciar sesión con Apple”
  When decide cancelar la autorización en la ventana de Apple
  Then el sistema debe mantenerlo en la pantalla de inicio de sesión
  And mostrar un mensaje de aviso

Examples:
| INPUT |
| Opción seleccionada: "Iniciar sesión con Apple" |
| Acción: Cancelar autorización |

| OUTPUT |
| Acceso concedido: No |
| Mensaje: "No se pudo iniciar sesión. Autorización cancelada." |

Scenario: Error en autenticación con Apple
  Given que el usuario selecciona “Iniciar sesión con Apple”
  When ocurre un error en la autenticación externa de Apple
  Then el sistema debe mostrar un mensaje de error
  And permitir reintentar iniciar sesión

Examples:
| INPUT |
| Opción seleccionada: "Iniciar sesión con Apple" |
| Error: Problema de conexión o credenciales inválidas |

| OUTPUT |
| Acceso concedido: No |
| Mensaje: "Error al autenticar con Apple. Intente nuevamente." |
| Acción sugerida: Reintentar iniciar sesión |
