Feature: Petstore API (Opcion 3) CRUD users

Background:
    * url baseUrl
    * def userData = read('user-data.json')

Scenario: Create, find, update and delete user 
    #1 Create User (POST)
    Given path "user"
    And request userData
    When method post
    Then status 200

    #2 Find User (GET)
    Given path 'user', userData.username
    When method get
    Then status 200
    And match response.username == userData.username
    And match response == 
    """
    {
        "id": "#number",
        "username": "#string",
        "firstName": "#string",
        "lastName": "#string",
        "email": "#string",
        "password": "#string",
        "phone": "#string",
        "userStatus": "#number"
    }
    """

    #3 Update User (PUT)
    * set userData.firstName = 'Julian'
    * set userData.email = 'julian.ortiz@test.com'
    Given path 'user' , userData.username
    And request userData
    When method put
    Then status 200


    #4 Find User Updated (GET)
    Given path 'user', userData.username
    When method get
    Then status 200
    And match response.firstName == 'Julian'
    And match response.email == 'julian.ortiz@test.com'

    #5 Delete User (DELETE)
    Given path 'user', userData.username
    When method delete
    Then status 200
    And match response.message == userData.username

