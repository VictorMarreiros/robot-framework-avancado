*** Settings ***
Resource            ../resources/Resource.robot
Resource            ../resources/PO/Home.robot
Resource            ../resources/PO/Carrinho.robot
Resource            ../resources/PO/Login.robot
Resource            ../resources/PO/Register.robot
Resource            ../resources/PO/Profile.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** Test Case ***
Caso de Teste com PO 01: Remover Produtos do Carrinho
    Home.Acessar a página home do site
    Home.Adicionar o produto "t-shirt" no carrinho
    Carrinho.Excluir o produto do carrinho
    Carrinho.Conferir se o carrinho fica vazio

## EXERCÍCIO
Caso de Teste com PO 02: Adicionar Cliente
    Home.Acessar a página home do site
    Home.Clicar em "Sign in"
    Login.Informar um e-mail válido
    Login.Clicar em "Create an account"
    Register.Preencher os dados obrigatórios
    Register.Submeter cadastro
    Profile.Conferir se o cadastro foi efetuado com sucesso
