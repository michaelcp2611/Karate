Feature: plan de pruebas+


  @casoGet
  Scenario Outline: <PRUEBAPARAMETRIZADA>
  Given url 'https://reqres.in/api/users/<ID>'
    When header 'Content-Type' = 'Application/json'
    *  configure connectTimeout = 120000
    * configure readTimeout = 120000
    And method GET
    Then status 200

    Examples:
    |PRUEBAPARAMETRIZADA|ID |
    |Titulo 1| 1 |
    |Titulo 2|2  |
    |Titulo 3|3  |
    |Titulo 4|4  |
    |Titulo 5|5  |


    

 @CasoPOST
Scenario Outline: caso de Prueba tipo <titulo>
   Given url 'https://reqres.in/api/users'
    When request {"name": "<name>","job": "<job>"}
    And method POST
    Then status 201

Examples:
   |read('data.csv')|



   

Scenario: caso de Prueba tipo POST TIPO 2
  Given url 'https://reqres.in/api/users'
  When request
   """
  {
  "name": "jeremy",
  "job": "QA"
  }
  """
  And method POST
  Then status 201

Scenario: caso de Prueba tipo DELETE
     Given url 'https://reqres.in/api/users/3'
     When method DELETE
     Then status 204
