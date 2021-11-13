*** Settings ***

# Resource          ../Resource/ResourceLogin.robot
Resource          ../Resource/ResourceContratos.robot
Test Setup        Abrir navegador
Test Teardown   Fechar navegador



*** Test Case ***


### ÁREA DO USUÁRIO ADMINISTRADOR -  CONTRATOS ###

AREA ADM | CONTRATOS | Caso de teste 01: Logar na área do adm e realizar "Download All" do contrato
  [Tags]  AreaAdm_Contratos_Caso1

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  Quando eu clicar no botão "Download All"
  Então deverá realizar o download do arquivo Excel

#

AREA ADM | CONTRATOS | Caso de teste 02: Logar na área do adm e realizar pesquisa por contrato
  [Tags]  AreaAdm_Contratos_Caso2

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  E descrever no campo SEARCH "3433"
  Quando eu clicar no botão "Search"
  Então deverá realizar buscar informações retornando o valor pesquisado "3433"

#

# AREA ADM | CONTRATOS | Caso de teste 03: Logar na área do adm e realizar pesquisa por E-mail
#
# AREA ADM | CONTRATOS | Caso de teste 04: Logar na área do adm e realizar pesquisa por status cadastrado

#

### ÁREA DO USUÁRIO ADMINISTRADOR -  CONTA DE LUZ ###

AREA ADM | CONTA DE LUZ | Caso de teste 01: Logar na área do adm entrar em "Conta de Luz" e clicar "Download All" excel
  [Tags]  AreaAdm_ContaLuz_Caso1

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  Quando clicar na opção "Conta Luz"
  E apresentar a home de "Conta de Luz"
  E clicar no botão "Dowload All" da conta de luz
  Então deverá realizar o download do arquivo Excel

#

AREA ADM | CONTA DE LUZ | Caso de teste 02: Logar na área do adm, entrar em "Conta de Luz" e realizar pesquisa por user
  [Tags]  AreaAdm_ContaLuz_Caso2

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  E clicar na opção "Conta Luz"
  E apresentar a home de "Conta de Luz"
  E descrever no campo SEARCH "Munhoz"
  Quando eu clicar no botão "Search"
  Então deverá realizar buscar informações retornando o valor pesquisado "4657" conta luz

#

### ÁREA DO USUÁRIO ADMINISTRADOR -  REFINO PROPOSTAS ###

AREA ADM | REFINO PROPOSTA | Caso de teste 01: Logar na área do adm, entrar em "Refino propostas" e clicar "Download All" excel
  [Tags]  AreaAdm_RefinoPropostas_Caso1

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  Quando clicar na opção "Refino Propostas"
  E apresentar a home de "Refino Propostas"
  E clicar no botão "Dowload All" da Refino Propostas
  Então deverá realizar o download do arquivo Excel

#

AREA ADM | CONTA DE LUZ | Caso de teste 02: Logar na área do adm, entrar em "Refino Propostas" realizar pesquisa por usário
  [Tags]  AreaAdm_RefinoPropostas_Caso2

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  E clicar na opção "Refino Propostas"
  E apresentar a home de "Refino Propostas"
  E descrever no campo SEARCH "102"
  Quando eu clicar no botão "Search"
  Então deverá realizar buscar informações retornando o valor pesquisado "102" Refino Propostas

  #

  ### ÁREA DO USUÁRIO ADMINISTRADOR -  SET UP CPFL PAULISTA ###
AREA ADM | SET UP CPFL PAULISTA | Caso de teste 01: Logar na área do adm, entrar em "Set Up CPFL Paulista" realizar pesquisa por stauts.
  [Tags]  AreaAdm_SetUpCPFL_Caso1

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  E clicar na opção "Set Up Paulista"
  E apresentar a home de "Set Up Paulista"
  E descrever no campo SEARCH "Aguardando Ativação"
  Quando eu clicar no botão "Search" Set Up CPFL
  Então deverá apresentar status de "Aguardando Ativação"

#

AREA ADM | SET UP CPFL PAULISTA | Caso de teste 02: Logar na área do adm, entrar em "Set Up CPFL Paulista" e clicar "Download All" excel.
  [Tags]  AreaAdm_SetUpCPFL_Caso2

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  Quando clicar na opção "Set Up Paulista"
  E apresentar a home de "Set Up Paulista"
  E clicar no botão "Dowload All" da Set Up CPFL
  Então deverá realizar o download do arquivo Excel

#

AREA ADM | SET UP CPFL PAULISTA | Caso de teste 03: Logar na área do adm, entrar em "Set Up CPFL Paulista", clicar "Baixar modelo" e clicar "Download All" excel.
  [Tags]  AreaAdm_SetUpCPFL_Caso3

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  E clicar na opção "Set Up Paulista"
  E apresentar a home de "Set Up Paulista"
  Quando clicar no botão "Baixar Modelo" da Set Up CPFL
  E apresentar a home de "Ativação em massa"
  E clicar no botão "Dowload All" da "Ativação em massa"
  Então deverá realizar o download do arquivo Excel

#

AREA ADM | SET UP CPFL PAULISTA | Caso de teste 04: Logar na área do adm, entrar em "Set Up CPFL Paulista". pesquisar contrato na "ativação em massa" e verificar ativação.
  [Tags]  AreaAdm_SetUpCPFL_Caso4

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  E clicar na opção "Set Up Paulista"
  E apresentar a home de "Set Up Paulista"
  E clicar no botão "Baixar Modelo" da Set Up CPFL
  E apresentar a home de "Ativação em massa"
  E descrever no campo SEARCH "Aguardando Ativação"
  Quando clicar no botão "Search" Ativação em massa
  Então deverá realizar apresentar contratos para ativação "aguardando ativação"

#

AREA ADM | SET UP CPFL PAULISTA | Caso de teste 05: Logar na área do adm, entrar em "Set Up CPFL Paulista". pesquisar contrato, verificar ativação e ativar contrato
  [Tags]  AreaAdm_SetUpCPFL_Caso5

  Dado que estou na pagina home
  E clicar no botão "Entrar"
  E preencher com usuario administrativo "eder.estevan@floraenergia.com.br" no campo e-mail
  E clicar no botão "Avançar"
  E deverá inserir corretamente a senha administrativa "Eder@29282726"
  E clicar no botão "Avançar" para logar na aplicação
  E o login deverá ser realizado com sucesso apresentando a área administrativa home "Contratos"
  E clicar na opção "Set Up Paulista"
  E apresentar a home de "Set Up Paulista"
  E clicar no botão "Baixar Modelo" da Set Up CPFL
  E apresentar a home de "Ativação em massa"
  E descrever no campo SEARCH "Aguardando Ativação"
  E clicar no botão "Search" Ativação em massa
  E apresentar contratos para ativação "aguardando ativação"
  E clicar no primeiro contrato da lista
  E presemtar a tela de "Detalhes de contrato"
  E clicar no btoão "Ativar Contrato"
  Quando apresentar tela de confirmação "Deseja ativar o contrato para o cliente?"
  E clicar no botão "Ativar o contrato"
  Então o status do contrato deverá mudar para "Ativo"
