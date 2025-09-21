Feature: Test de prueba básico con Karate
  Para verificar que Karate corre correctamente y genera el reporte

  Scenario: Hacer GET a una API pública
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method GET
    Then status 200
    And match response.id == 1
