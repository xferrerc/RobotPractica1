*** Keywords ***

Inicio sistema
    [Arguments]  ${param1}=TSuite
    log  Inicio sistema pruebas suite2 con param ${param1}

Finalizacion sistema
    [Arguments]  ${param1}=TSuite
    log  Finalizacion sistema pruebas suite2 con param ${param1}

Acceder a URL en ventana maximizada
    [Arguments]  ${URL}="http://google.es"
    Open Browser  ${URL}  Firefox
    Maximize Browser Window
    Sleep  1