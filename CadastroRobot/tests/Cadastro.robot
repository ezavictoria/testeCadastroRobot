*** Settings ***
Resource    ../resources/base.robot

*** Test Cases ***

Fazer login
    Dado que o usuário esteja na Home
    E clico no botão Sing In
    Quando coloco um e-mail válido
    E preencho todas as informações de cadastro de forma válida
    Então devo visualizar a área logada

