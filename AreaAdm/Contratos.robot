*** Settings ***

# Resource          ../Resource/ResourceLogin.robot
Resource          ../Resource/ResourceContratos.robot
Test Setup        Abrir navegador


*** Test Case ***


### ÁREA DO USUÁRIO ADMINISTRADOR ###

Área do administrativo | Caso de teste 01: Logar na área do adm e realizar "Download All" do contrato
  [Tags]  AreaAdm_Contratos_Caso1

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  Quando eu clicar no botão "Download All"
  Então deverá realizar o download do arquivo

#

Área do administrativo | Caso de teste 02: Logar na área do adm e realizar pesquisa por contrato
  [Tags]  AreaAdm_Contratos_Caso2

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  E descrever no campo SEARCH o contrato "3433"
  Quando eu clicar no botão "Search"
  Então deverá realizar buscar informações retornando o contrato pesquisado "3433"

#

Área do administrativo | Caso de teste 03: Logar na área do adm e realizar pesquisa por E-mail

Área do administrativo | Caso de teste 04: Logar na área do adm e realizar pesquisa por status cadastrado
