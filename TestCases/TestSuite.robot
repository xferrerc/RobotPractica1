*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Firefox
${URL}  http://www.google.es

*** Keywords ***
Accion que retorna un valor
    [Arguments]  ${param1}
    [Return]  Valor retornado ${param1}

*** Test Cases ***
Abrir y cerrar navegador
    [Tags]  browser
    #Comentarios con #
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    #Input Text   id=lst-ib  robotframework
    #Input Text   name=xxx  robotframework
    Input Text   xpath://input[@id='lst-ib']  robotframework
    Click Button   name=btnK
    #Close Browser

Abrir enlace que contiene "robot" en su descripcion
    [Tags]  enlaces
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    #Sleep  2
    #Click Link   xpath://a[contains(text(),"Robot")]
    #Click Link   xpath://a[contains(.,"Robot")]
    ${valor retornado}=  Accion que retorna un valor  XFerrer
    log  Valor retornado por keyword es ${valor retornado}
    Close Browser
