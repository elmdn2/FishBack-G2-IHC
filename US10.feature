Feature: US10 - Inicio de Sesión con Teléfono Celular
  Como usuario
  Quiero poder iniciar sesión utilizando mi teléfono celular
  Para acceder de forma rápida y segura sin necesidad de crear una cuenta manualmente

Scenario: Inicio de sesión exitoso con teléfono celular
  Given que el sistema ofrece la opción de autenticación mediante teléfono celular
  When el usuario selecciona “Iniciar sesión con teléfono celular” y autoriza el acceso mediante código o OTP
  Then el sistema autentica las credenciales a través del teléfono celular
  And permite el ingreso inmediato a la plataforma
  And carga el perfil vinculado del usuario

Examples:
| INPUT |
| Opción seleccionada: "Iniciar sesión con teléfono celular" |
| Acción: Autorización mediante OTP enviado al celular |

| OUTPUT |
| Acceso concedido: Sí |
| Perfil cargado: Sí |
| Mensaje de bienvenida (Opcional): "Bienvenido [Nombre]" |

Scenario: Usuario ingresa un código OTP incorrecto
  Given que el usuario selecciona “Iniciar sesión con teléfono celular”
  When ingresa un código OTP inválido
  Then el sistema debe mostrar un mensaje de error
  And permitir reintentar ingresar el código

Examples:
| INPUT |
| Acción: Ingreso de OTP inválido |

| OUTPUT |
| Acceso concedido: No |
| Mensaje: "Código incorrecto. Intente nuevamente." |
| Acción sugerida: Reintentar OTP |

Scenario: Usuario no recibe código OTP
  Given que el usuario selecciona “Iniciar sesión con teléfono celular”
  When no recibe el código OTP en el tiempo esperado
  Then el sistema debe ofrecer la opción de reenviar el código
  And mostrar un mensaje informativo

Examples:
| INPUT |
| Acción: No recibe OTP |

| OUTPUT |
| Acceso concedido: No |
| Mensaje: "No se recibió el código. Reenviar OTP" |
| Acción sugerida: Reenviar OTP |

Scenario: Error en autenticación mediante teléfono celular
  Given que el usuario selecciona “Iniciar sesión con teléfono celular”
  When ocurre un error en la verificación externa del número
  Then el sistema debe mostrar un mensaje de error
  And permitir reintentar iniciar sesión

Examples:
| INPUT |
| Error: Problema de conexión o número no registrado |

| OUTPUT |
| Acceso concedido: No |
| Mensaje: "Error al autenticar con teléfono celular. Intente nuevamente." |
| Acción sugerida: Reintentar inicio de sesión |
