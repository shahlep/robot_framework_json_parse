*** Settings ***
Library  Collections
Library  os             # for accessing files using path
Library  JSONLibrary    # we want to deal with list, dictionary


*** Test Cases ***
json_parse
   ${json_object}=   load json from file   /Users/shah/PycharmProjects/robot_framework_json_parse/finland.json
   ${firstname}=    get value from json  ${json_object}    $.firstname  ## var is a list
   ${citytname}=   get value from json  ${json_object}   $.address.city
   ${mobilenumber}=     get value from json     ${json_object}  $.contact[1].number

   # validations
    should be equal  ${firstname[0]}    Shah
    #should be equal   ${cityname[0]}      Helsinki
    should be equal     ${mobilenumber[0]}  12345

