*** Settings ***

Library		          SeleniumLibrary


*** Variables ***
### ABERTURA DE NAVEGADOR ###
${BROWSER}         chrome
${URL}             https://staging.floraenergia.com.br/
${VALIDAR_PAGINA}  Flora Energia

*** Keywords ***
### ABERTURA DE NAVEGADOR ###
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser

Dado que estou na pagina home
    Go To     ${URL}
    Title Should Be   ${VALIDAR_PAGINA}

# ### lOGIN ###
# E cliquei no botão Entrar
#     Click Element    id=login_lp
#     Location Should Be    https://staging.floraenergia.com.br/login
#     # Page Should Contain Image    class=login-wrapper
#     # Title Should Be    class=login-wrapper
#     # Page Should Contain Link
#
# E inseri o e-mail Valido
#   Click Element    css:input#standard-password-input
#   Input Text       css:input#standard-password-input    ${EMAIL_VALIDO}
#
#
# E Cliquei na botão "Avançar"
#   Click Element    css:div.sc-gggoXN.cbnvNz
#
# Quando Inseri a senha no campo senha
#   Click Element     css:input[class="MuiInputBase-input MuiInput-input MuiInputBase-inputAdornedEnd"][name=password]
