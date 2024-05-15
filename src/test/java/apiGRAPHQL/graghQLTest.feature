@graphQLTest
  Feature: plan de pruebas asociado a query graphQL
    Scenario: caso de prueba query

      Given url 'https://rickandmortyapi.com/graphql'
      When text query =
      """
      query{
        character(id:100){
          name,
          status,
		  species,
          gender,
          image,
          origin {
            id
            }
          }
        }
      """
    And request {query : '#(query)'}
    And method POST
    And match response.data.character.name == 'Bubonic Plague'
    Then status 200