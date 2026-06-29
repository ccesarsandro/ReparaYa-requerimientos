# Language: es
Feature: EP-002: Búsqueda y Gestión de Servicios
  Como cliente, quiero buscar técnicos por categoría y ubicación, y gestionar mis citas 
  Para solucionar problemas técnicos en mi hogar eficientemente.

  Scenario: HU-004 Búsqueda de técnicos especialistas por categoría
    Given que el cliente inició sesión y se encuentra en la pantalla principal de búsqueda
    When selecciona una categoría específica del catálogo de reparaciones (ej. Gasfitería, Electricidad)
    Then el sistema filtra la base de datos de profesionales disponibles
    And muestra en pantalla una lista de los técnicos que pertenecen únicamente a la categoría seleccionada.

  Scenario: HU-005 Filtrado avanzado de técnicos por ubicación en Lima Metropolitana
    Given que el cliente está visualizando los resultados de una categoría técnica
    When aplica el filtro geográfico seleccionando su distrito actual de residencia
    And hace clic en el botón "Aplicar Filtros"
    Then la plataforma procesa los datos de localización de los técnicos
    And actualiza la interfaz mostrando solo a los especialistas cuya zona de cobertura coincida con el distrito indicado.

  Scenario: HU-009 Agendamiento de cita de reparación a domicilio
    Given que el cliente seleccionó el perfil de un técnico verificado y disponible
    And se encuentra en el módulo de reserva de citas
    When elige una fecha disponible en el calendario, selecciona un horario y detalla brevemente el problema
    And presiona el botón "Confirmar Cita"
    Then el sistema registra el servicio con el estado "Pendiente de Confirmación"
    And envía una alerta de notificación inmediata al panel del técnico asignado.
