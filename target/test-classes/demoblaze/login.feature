Feature: Pruebas de Login en DemoBlaze

  Background:
    * url 'https://api.demoblaze.com'
    * def user = 'croldan'
    * def pass = 'calidad1'

  Scenario: Usuario y contraseña correctos
    Given path 'login'
    And request { username: '#(user)', password: '#(pass)' }
    When method post
    Then status 200
    # si el login es correcto debe venir un Auth_token
    * match response.Auth_token == '#string'

  Scenario: Usuario y contraseña incorrectos
    Given path 'login'
    And request { username: '#(user)', password: 'claveMala' }
    When method post
    Then status 200
    # aquí esperamos el mensaje de error
    * match response.errorMessage == 'Wrong password.'
