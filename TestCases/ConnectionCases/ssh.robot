*** Settings ***
Library  SSHLibrary
Suite Setup  Open Connection and Log in
Suite Teardown  Close All Connections

*** Variables ***
${HOST}  localhost
${USERNAME}  test
${PASSWORD}  test

*** Keywords ***
Open Connection And Log In
    Open Connection   ${HOST}
    Login  ${USERNAME}  ${PASSWORD}

*** Test Cases ***
Test SSH

Ejecutar comando y comprobar resultado
    [Documentation]  ADefinir
    Execute Command  echo Prueba de comando echoooooo
    should be equal  ${out}  Prueba de comando echoooooo
