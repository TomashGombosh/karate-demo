Feature: Check

  Scenario:
    * def schema = read('dataFiles/example.json')
    * def response = [{"id": 1, "cities": [{"name": "Uzhhorod", "region": "ZK"}, {"name": "Kyiv", , "region": "ZK"}]}, {"id": 2, "cities": [{"name": "Uzhhorod", "region": "ZK"}, {"name": "Kyiv", , "region": "ZK"}]}]
    * match response == '#[] schema'
