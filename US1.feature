Feature: Registro de usuarios

    Como usuario nuevo
    Quiero registrarme en la plataforma
    Para poder acceder a las funciones de FishBack de manera personalizada

    Scenario: El usuario accede a la pantalla de registro
        Given llena correctamente los datos solicitados,
        When presiona el botón "Registrarse ahora",
        Then su cuenta será creada y será redirigido a la pantalla de inicio.

    Examples: INPUT
        | Nombre de usuario | Correo Electronico     | Contraseña   |
        | Juan Jose         | ejemplo123@hotmail.com | password123  |

    Examples: OUTPUT
        | Resultado                               |
        | La cuenta ha sido creada correctamente  |
        | Enviando de vuelta a la pantalla de inicio |