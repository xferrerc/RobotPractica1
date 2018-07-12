*** Settings ***
Documentation  Pruebas de escenarios de Suite 2
...            para verificar correcto acceso a
...            sistema
Resource  ../Resources/common.robot
Resource  ../InputData/data.robot
Test Setup  Inicio sistema
Test Teardown  Finalizacion sistema

*** Variables ***
${nombre site}  URL1


*** Keywords ***

*** Test Cases ***
Test Case 1
    [Setup]  Inicio sistema  TCase
    log  Se ha iniciado TC1
    [Teardown]  Finalizacion sistema  TCase

Test Case 2
    log  Se ha iniciado TC2  console=true

