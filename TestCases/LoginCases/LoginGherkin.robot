*** Settings ***

*** Keywords ***
usuario con credenciales correctas
    log  precondiciones-credenciales ok

usuario introduce el username
    log  intro username

usuario introduce la clave
    log  intro clave
se muestra el profile de usuario
    log  pantalla user profile ok


*** Test Cases ***
Usuario accede al sistema con credenciales correctas
    [Tags]  gherkin
    Given usuario con credenciales correctas
    When usuario introduce el username
    And usuario introduce la clave
    Then se muestra el profile de usuario

