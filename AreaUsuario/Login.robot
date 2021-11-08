*** Settings ***

Resource          ../Resource/ResourceLogin.robot
Test Setup        Abrir navegador

# Test Teardown     Fechar navegador
# *** Variables ***
# ${BROWSER}    chrome
# ${URL}        http://automationpractice.com

*** Test Case ***

### LOGIN DE USUÁRIO ###

Login de usuário | Caso de teste 01: Realizar login simples
  [Tags]  Login_Usuario_Caso1

  Dado que tenho perfil usuário cadastrado
  E estou na pagina home
  E clicar no botão "Entrar
  E preencher "eder.estevan@floraenergia.com.br" no campo e-mail
  Quando eu clicar no botão "Avançar"
  Então login deverá ser realizado na área de usuário.

#

### LOGIN DE USUÁRIO ADMINISTRADOR ###

Login de usuário administrativo | Caso de teste 01: Realizar login simples
  [Tags]  Login_UsuarioAdm_Caso1

  Dado que estou na pagina home
  # E que tenho usuário com perfil administrador cadastrado
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  Quando eu clicar no botão "Avançar"
  Então deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
