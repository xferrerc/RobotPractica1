*** Settings ***
Library  Telnet

*** Variables ***
#${ip}  192.168.110.140
#${port}  23
${ip}  64.13.139.230
${port}  76

*** Test Cases ***
TC1 - Conectarse a sistema via telnet
    Open Connection  ${ip}  ${port}
    # Set Prompt  prompt=(#|>)  prompt_is_regexp=True
    Set Prompt  user
    Set Newline  CRLF
    Read until  user

TC2 - Obtener info del sistema conectado
    # from library  Telnet
    #${out}=  Execute Command  ls
    ${out}=  Execute Command  help

    # from library Collections: obtener primer valor (0) de la lista 'out'
    ${list}=  Get From List  $out}  0
    # match que empiece por tres
    #should match regexp  ${item }  /[^_3/
    log  ${out}


TC3 - Desconectarse del sistema remoto
    Close All Connections
