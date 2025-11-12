Feature: US23 - Sección "Contacto"
  Como visitante
  Quiero acceder a una sección de "Contacto" con un formulario
  Para enviar preguntas o comentarios al equipo de FishBack

Scenario: Envío exitoso del formulario de contacto
  Given que el visitante accede a la sección "Contacto"
  And completa correctamente todos los campos obligatorios (nombre, apellido, DNI, correo, teléfono y mensaje)
  When presiona el botón "Enviar"
  Then el formulario será procesado correctamente
  And el mensaje será recibido por el equipo de FishBack
  And se mostrará un mensaje de confirmación al visitante

Examples:
| INPUT |
| Nombre: "Juan" |
| Apellido: "Pérez" |
| DNI: "12345678" |
| Correo: "juan@mail.com" |
| Teléfono: "987654321" |
| Mensaje: "Consulta sobre servicios" |
| Acción: Presionar "Enviar" |

| OUTPUT |
| Formulario procesado: Sí |
| Mensaje recibido: Sí |
| Mensaje de confirmación: "Su mensaje ha sido enviado correctamente" |

Scenario: Intento de envío con campos incompletos
  Given que el visitante accede a la sección "Contacto"
  And deja algún campo obligatorio vacío
  When presiona el botón "Enviar"
  Then el sistema debe mostrar un mensaje de error indicando los campos faltantes
  And no se enviará el mensaje hasta completar todos los campos obligatorios

Examples:
| INPUT |
| Campos incompletos: Correo y mensaje vacíos |
| Acción: Presionar "Enviar" |

| OUTPUT |
| Formulario procesado: No |
| Mensaje de error: "Por favor complete todos los campos obligatorios" |

Scenario: Validación de formato de campos
  Given que el visitante completa el formulario de contacto
  When ingresa un correo o teléfono con formato incorrecto
  Then el sistema debe mostrar un mensaje de error indicando el formato inválido
  And no permitirá enviar el formulario hasta corregir los errores

Examples:
| INPUT |
| Correo: "juan@mail" |
| Teléfono: "abc123" |
| Acción: Presionar "Enviar" |

| OUTPUT |
| Formulario procesado: No |
| Mensaje de error: "Ingrese un correo y teléfono válidos" |
