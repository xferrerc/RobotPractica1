*** Settings ***
Documentation  Pruebas de escenarios con Amazon en Suite 4
Library  SeleniumLibrary
Resource  ../Resources/common.robot
Library  ../External/common.py
Library  Remote  http://127.0.0.1:8270

*** Variables ***
${URL}  http://www.mercadona.es


*** Keywords ***
Paso de ejecucion con parametro
    [Arguments]  ${param}
    log  ${param}

KeywordA
    #${external_result}=  test_python
    ${external_result}=  Conectarme al sistema remoto de creacion de helados
    log  KeyA ${external_result}


*** Test Cases ***
#TC1
Test Case 1
    [Template]  Paso de ejecucion con parametro
    Juan
    Alberto
    Maria

#TC2
Test Case 2 para KeywordA
    log  TC2 KeywordA
    KeywordA

#TC3
Test Case 3
    Acceder a URL en ventana maximizada  ${URL}
    Lista de productos de la web  o-info

#TC4
Test Case 4
    abrir_cuenta
    cerrar cuenta
    ${saldo_actual}=  obtener_saldo
    log  Mi saldo es ${saldo_actual}
