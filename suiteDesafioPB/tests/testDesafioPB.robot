*** Settings ***
Resource           ../resource/resource.robot
Test Setup         Abrir navegador
Test Teardown      Fechar navegador

*** Test Cases ***
Caso de Teste 01: Validar se o texto "Hello World!" é apresentado corretamente
    Dado que estou na página "Dynamically Loaded Page Elements"
    Quando eu clicar no botão "Start"
      E aguardar o carregamento do elemento
    Então a página deve me devolver o texto "Hello World!"
