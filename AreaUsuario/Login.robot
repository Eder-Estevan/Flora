*** Settings ***

Resource          ../Resource/ResourceLogin.robot
Test Setup        Abrir navegador

# Test Teardown     Fechar navegador
# *** Variables ***
# ${BROWSER}    chrome
# ${URL}        http://automationpractice.com

*** Test Case ***

Caso de teste 01: Realizar login simples

    Dado que estou na pagina home
    E cliquei no botão Entrar
    E inseri o e-mail Valido
    E Cliquei na botão "Avançar"
    Quando Inseri a senha no campo senha
#     Então as sub categorias devem ser exibidas
#
#


### LOGIN DE USUÁRIO ###

# Caso de teste 01: Realizar login simples
# [tag]   LOGIN_1
#     Dado que estou na pagina home
#     E cliquei no botão Entrar
#     E inseri o e-mail Valido
#     E Cliquei na botão "Avançar"
#     Quando Inseri a senha no campo senha
# #     Então as sub categorias devem ser exibidas



# Caso de teste 03.1: Listar produtos
#
#     Dado que estou na pagina home
#     Quando eu clicar na categoria "Summer Dresses"
#     Então uma pagina com os produtos da categoria "Summer Dresser" deve ser exibida.

#
# *** Keywords ***
#
# Dado que estou na pagina home
#     Acessar página home do site
#
# Quando eu passar o mouse por cima da categoria "${NOME_CATEGORIA}" no menu principal superior de categorias
#     Click Element    class="submenu-container clearfix first-in-line-xs"   ${NOME_CATEGORIA}
#
# # Quando eu passar o mouse por cima da categoria "Women" no menu principal superior de categorias
