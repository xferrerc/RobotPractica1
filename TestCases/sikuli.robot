*** Settings ***
Library  SikulyLibrary  mode=NEW
Suite Setup  Start Sikuli Process
Test Setup  aplicar el path de imagenes
Suite Teardown  Stop Remote Server
#Suite Teardown

*** Keywords ***
aplicar el path de imagenes
    Add Image Path  ${IMAGENES}

*** Variables ***
${IMAGENES}  ${CURDIR}\\img

*** Test Cases ***
Abrir menu inicial de windows
    Add image Path  ${IMAGENES}
    Click  win_logo.png
