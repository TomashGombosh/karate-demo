Feature: Check

  Scenario:
    * def schema = read('dataFiles/example.json')
    * def port = karate.start('mockServer.feature').port
    * url 'http://localhost:' + port
    * path getObject
    * method get
    * status 200
    * match response == '#[] schema'
