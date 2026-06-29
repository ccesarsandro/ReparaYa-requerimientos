# Language: es
Feature: EP-001: Gestión de Usuarios y Acceso
  Como usuario, quiero registrarme, iniciar sesión y gestionar mis credenciales de forma segura 
  Para acceder a las funcionalidades personalizadas de ReparaYa.

  Scenario: HU-001 Registro exitoso de usuario en la plataforma
    Given que el usuario no tiene una cuenta creada y se encuentra en la interfaz de registro
    When ingresa su nombre, correo electrónico, una contraseña segura que cumpla los criterios y confirma sus datos
    And presiona el botón "Registrarse"
    Then el sistema valida que los campos tengan el formato correcto
    And almacena las credenciales de manera encriptada en la base de datos
    And muestra el mensaje "Registro exitoso" redirigiéndolo a la configuración de su perfil.

  Scenario: HU-002 Inicio de sesión correcto
    Given que el usuario ya cuenta con un perfil activo en ReparaYa
    And se encuentra en la pantalla de "Iniciar Sesión"
    When introduce su correo electrónico registrado y su contraseña correspondiente
    And hace clic en el botón "Ingresar"
    Then el sistema verifica la autenticidad de las credenciales en el servidor
    And otorga acceso a la plataforma mostrando la pantalla principal según su rol (Cliente o Técnico).
