*** Settings ***
Library  Collections
Library  os             # for accessing files using path
Library  JSONLibrary    # we want to deal with list, dictionary


*** Test Cases ***
json_parse
   ${json_object}=   load json from file   /Users/shah/PycharmProjects/robot_framework_json_parse/finland.json
   ${firstname}=    get value from json  ${json_object}    $.firstname  ## var is a list
   ${streetname}=   get value from json  ${json_object}   $.address.street
   ${mobilenumber}=     get value from json     ${json_object}  $.contact[1].number

   # validations
    should be equal  ${firstname[0]}    Shah
    should be equal   ${streetname[0]}      Testi Katu
    should be equal     ${mobilenumber[0]}  12345

