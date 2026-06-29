# Language: es
Feature: Requerimientos No Funcionales de la Plataforma

  Scenario: NFR-001 Seguridad - Cifrado de Datos de Identidad
    Given que un técnico o usuario envía sus datos de credenciales al sistema
    When la información viaja hacia el servidor de base de datos
    Then el sistema debe aplicar cifrado bajo el protocolo TLS 1.3 en tránsito
    And almacenar las contraseñas e información sensible con encriptación segura en reposo.

  Scenario: NFR-002 Rendimiento - Tiempo de Carga en Búsqueda por Categoría
    Given que un cliente ejecuta un filtro por categoría o ubicación en el buscador
    When el sistema realiza la consulta en la base de datos de técnicos activos
    Then la lista de especialistas filtrados debe renderizarse por completo en la interfaz en un tiempo menor a 2.0 segundos.

  Scenario: NFR-003 Seguridad - Protección contra accesos masivos (Rate Limiting)
    Given que se realizan peticiones consecutivas al formulario de login de la plataforma
    When una dirección IP intente enviar más de 10 intentos de inicio de sesión fallidos en menos de un minuto
    Then el sistema debe activar el mecanismo de Rate Limiting
    And responder con un código HTTP 429 "Too Many Requests"
    And bloquear las solicitudes entrantes de esa IP temporalmente por 15 minutos.

  Scenario: NFR-004 Disponibilidad - Tolerancia a fallos en mapas de cobertura de distritos
    Given que la aplicación se encuentra operativa mostrando los distritos de Lima Metropolitana
    When el servicio principal de mapas en la nube sufra una caída de conexión o latencia crítica
    Then la plataforma debe activar automáticamente el módulo de contingencia o proveedor de mapas de respaldo
    And garantizar que el cliente pueda seguir seleccionando su distrito sin que la app se cierre o congele.
