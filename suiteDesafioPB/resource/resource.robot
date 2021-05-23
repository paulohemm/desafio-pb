*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}          https://the-internet.herokuapp.com/dynamic_loading/1

*** Keywords***
### Setup e Teardown
Abrir navegador
    Open Browser    about:blank     ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser

### Passo-a-Passo
Dado que estou na página "${subtitulo}"
    Go To                              ${URL}
    Wait Until Page Contains Element   xpath=//*[contains(text(),'${subtitulo}')]    timeout=10 seconds

Quando eu clicar no botão "${botao}"
    Click Button                       xpath=//button[text()='${botao}']

E aguardar o carregamento do elemento
    Wait Until Element Is Visible      id=finish    timeout=10 seconds

Então a página deve me devolver o texto "${texto}"
    Element Text Should Be             id=finish    ${texto}
    Capture Element Screenshot         id=finish    filename=textoEsperado{index}.png
