Feature: test get request end points

Scenario: Test get request for a list of users
Given url 'https://reqres.in/api/users?page=2'
When method GET
Then status 200
And print response
#And match response.data[0].email == 'lindsay.ferguson@regres.in'
And match $.data[0].email == 'lindsay.ferguson@regres.in'


Scenario: Test get request for a list of users
Given url 'https://reqres.in/api/users?page=2'
When method GET
Then status 200
And print response
#And match response.data.first_name == 'Lindsay'

Scenario: Test get request for a single user
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
And print response
#And math response.data.first_name == 'Janet'
