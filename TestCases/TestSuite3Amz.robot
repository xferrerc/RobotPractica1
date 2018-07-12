*** Settings ***
Documentation  Pruebas de escenarios con Amazon en Suite 3
Library  SeleniumLibrary
Resource  ../Resources/common.robot
Resource  ../External/common.py

Test Teardown  Close Browser

*** Variables ***
${URL}  http://www.amazon.es

*** Keywords ***
Obtener titulo website
    ${var_title}=  Get Title
    [Return]  ${var_title}

KeywordA
    ${external_result}=  test_python
    log  KeyA

KeywordB
    log  KeyB

KeywordC
    ${external_result}=  test_python
    log  KeyC

Redireccion Keyword a partir de parametro edad
    [Arguments]  ${edad}
    run keyword IF  ${edad}>18  KeywordA
    ...  ELSE IF  ${edad}==18  KeywordB
    ...  ELSE  KeywordC

*** Test Cases ***
#TC1 Verificar titulo website Amazon
TC1
    Acceder a URL en ventana maximizada  ${URL}
    ${titulo_site}=  Obtener titulo website
    should start with  ${titulo_site}  Amazon
    Sleep  1

#TC2 Acceder a login desde acceso superior con mouse over
TC2
    Acceder a URL en ventana maximizada  ${URL}
    #${elemento_signin}=  Get Webelement  id=nav-link-accoundList
    #Click Link  id=nav-link-accoundList
    Sleep  2
    Click Link  xpath://a[@data-nav-role='signin']
    Sleep  2
    ${atributo boton}=  Get Element Attribute  id=continue  type
    should be equal as strings  ${atributo boton}  submit

#TC3 Test Edad
TC3
    Redireccion Keyword a partir de parametro edad  15
