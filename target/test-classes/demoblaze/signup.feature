Feature: Pruebas de Signup en DemoBlaze

  Background:
    * url 'https://api.demoblaze.com'

  Scenario: Crear un nuevo usuario
    * def newUser = 'user' + java.lang.System.currentTimeMillis()
    * def pass = 'calidad1'
    Given path 'signup'
    And request { username: '#(newUser)', password: '#(pass)' }
    When method post
    Then status 200
    # cuando el alta es correcta, el body es string vacío
    * match response == ""

  Scenario: Intentar crear usuario existente
    * def existingUser = 'croldan'
    * def pass = 'calidad1'
    Given path 'signup'
    And request { username: '#(existingUser)', password: '#(pass)' }
    When method post
    Then status 200
    # esperamos mensaje de usuario ya existente
    * match response.errorMessage == 'This user already exist.'


