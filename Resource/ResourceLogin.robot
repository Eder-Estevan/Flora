*** Settings ***

Library		          SeleniumLibrary
Library             FakerLibrary


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

### LOGIN DE USUÁRIO ###
Login de usuário | Caso de teste 01: Realizar login simples

#

### LOGIN DE USUÁRIO ADMINISTRADOR ###
Login de usuário administrativo | Caso de teste 01: Realizar login simples

E clicar no botão "Entrar"
  Wait Until Element Is Visible     css:a#login_lp
  Click Element                     css:a#login_lp

E preencher com usuario administrativo "${EMAIL_ADM}" no campo e-mail
  Wait Until Element Is Visible    css:input#standard-password-input
  Input Text                       css:input#standard-password-input   ${EMAIL_ADM}

Quando eu clicar no botão "Avançar"
  Wait Until Element Is Visible     css:button.read_more_btn
  Click Element                     css:button.read_more_btn

Então deverá inserir corretamente a senha administrativa "${SENHA_ADM}"
  Wait Until Element Is Visible     css:input#standard-password-input[name=password]
  Input Text                        css:input#standard-password-input[name=password]    ${SENHA_ADM}

E clicar no botão "Avançar" para logar na aplicação
  Wait Until Element Is Visible     css:button.read_more_btn
  Click Element                     css:button.read_more_btn

E o login deverá ser realizado com sucesso apresentando a área administrativa home "${CONTRATOS_HOME}"
  Wait Until Element Is Visible     css:h1.sc-jffHpj.lLwQZ
  Should Be Equal                  ${CONTRATOS_HOME}    Contratos
  Capture Page Screenshot
