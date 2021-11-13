*** Settings ***

Library		          SeleniumLibrary
Library             FakerLibrary
Library             OperatingSystem
Library             Process



*** Variables ***
### ABERTURA DE NAVEGADOR ###
${BROWSER}         chrome
${URL}             https://staging.floraenergia.com.br/
${VALIDAR_PAGINA}  Flora Energia
${DOWNLOAD_DIRECTORY}       C:\\robot_download

*** Keywords ***
# ABERTURA DE NAVEGADOR ###
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar navegador
    Close Browser

    ### ÁREA DO USUÁRIO ADMINISTRADOR ###

Área do administrativo | Caso de teste 01: Logar na área do adm e realizar "Download All" do contrato

Quando eu clicar no botão "Download All"
  Wait Until Element Is Visible       css:button.MuiButtonBase-root.MuiIconButton-root.iconbtn
  Click Element                       css:button.MuiButtonBase-root.MuiIconButton-root.iconbtn

Então deverá realizar o download do arquivo Excel
#Montando o caminho completo do arquivo
  ${HOME_DIR}=        normalize path  ~
  ${DOWNLOAD_DIR}=    Join Path   ${HOME_DIR}    DownloadS
  @{ITEMS}=	        OperatingSystem.List Directory                 ${DOWNLOAD_DIR}       Download.Excel
  # ${FILE}=            Join Path    ${DOWNLOAD_DIR}      ${items[0]}

#Extração dos Dados do PDF
    # ${EXCEL_EXTRACT_TEXT}=          Process.Run Process        pdf2txt.py  ${FILE}   shell=yes  alias=myproc
    # ${stdout}	${stderr}=        Get Process Result         myproc	stdout=yes	stderr=yes

#Armazenando Saída no Log
    Log To Console              ${SPACE}
    Log To Console              ${SPACE}
    # Log To Console     ${stdout}
    Log To Console              ${SPACE}
    # Log                ${stdout}

#Conferência dos Dados Exportados
    # ${Texto}                Should Contain  ${stdout}  Download




AREA ADM | CONTRATOS | Caso de teste 02: Logar na área do adm e realizar pesquisa por contrato

Dado que estou na pagina home
  Go To     ${URL}
  Title Should Be   ${VALIDAR_PAGINA}

E clicar no botão "Entrar"
  Wait Until Element Is Visible     css:a#login_lp
  Click Element                     css:a#login_lp

E preencher com usuario administrativo "${EMAIL_ADM}" no campo e-mail
  Wait Until Element Is Visible    css:input#standard-password-input
  Input Text                       css:input#standard-password-input   ${EMAIL_ADM}

E clicar no botão "Avançar"
  Wait Until Element Is Visible     css:button.read_more_btn
  Click Element                     css:button.read_more_btn

E deverá inserir corretamente a senha administrativa "${SENHA_ADM}"
  Wait Until Element Is Visible     css:input#standard-password-input[name=password]      10
  Input Text                        css:input#standard-password-input[name=password]    ${SENHA_ADM}

E clicar no botão "Avançar" para logar na aplicação
  Wait Until Element Is Visible     css:button.read_more_btn
  Click Element                     css:button.read_more_btn

E o login deverá ser realizado com sucesso apresentando a área administrativa home "${CONTRATOS_HOME}"
  Wait Until Element Is Visible     css:h1.sc-jffHpj.lLwQZ      10
  Should Be Equal                  ${CONTRATOS_HOME}    Contratos
  # Capture Page Screenshot

E descrever no campo SEARCH "${N_CONTRATO}"
  Wait Until Element Is Visible     css:div.sc-eCbnUT.fElMzr
  Click Element                     css:div.sc-eCbnUT.fElMzr
  Input Text                        css:input.sc-iBzEeX.glZmJR    ${N_CONTRATO}

Quando eu clicar no botão "Search"
  Wait Until Element Is Visible     xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[2]/div/div[1]/div/div/div/div[1]/div/div/button
  Click Element                     xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[2]/div/div[1]/div/div/div/div[1]/div/div/button
  Sleep                             8s

Então deverá realizar buscar informações retornando o valor pesquisado "${N_VALOR}"
  Wait Until Element Is Visible     css:a.sc-jNnpgg.jclDow[href="/contratos/3433"]      10
  Capture Page Screenshot

  #

  ### ÁREA DO USUÁRIO ADMINISTRADOR -  CONTA DE LUZ ###
AREA ADM | CONTA DE LUZ | Caso de teste 01: Logar na área do adm entrar em "Conta de Luz" e clicar "Download All" excel

Quando clicar na opção "Conta Luz"
  Wait Until Element Is Visible       Xpath=//*[@id="root"]/div[1]/div[1]/nav/a[2]       10
  Click Element                       Xpath=//*[@id="root"]/div[1]/div[1]/nav/a[2]

E apresentar a home de "Conta de Luz"
  Wait Until Element Is Visible       css:h1.sc-jffHpj.lLwQZ       10

E clicar no botão "Dowload All" da conta de luz
  Wait Until Element Is Visible         css:button.MuiButtonBase-root.MuiIconButton-root.iconbtn    10
  Click Element                         css:button.MuiButtonBase-root.MuiIconButton-root.iconbtn

#

AREA ADM | CONTA DE LUZ | Caso de teste 02: Logar na área do adm, entrar em "Conta de Luz" e realizar pesquisa por user

E clicar na opção "Conta Luz"
  Quando clicar na opção "Conta Luz"

Então deverá realizar buscar informações retornando o valor pesquisado ${N_VALOR_LUZ}" conta luz
  Wait Until Element Is Visible     Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[2]/div/div[1]/div/div/div/div[3]/table/tbody/tr[1]/td[2]      10
  Capture Page Screenshot

  #

  ### ÁREA DO USUÁRIO ADMINISTRADOR -  REFINO PROPOSTAS ###
AREA ADM | REFINO PROPOSTA | Caso de teste 01: Logar na área do adm entrar em "Refino propostas" e clicar "Download All" excel

Quando clicar na opção "Refino Propostas"
  Wait Until Element Is Visible           Xpath=//*[@id="root"]/div[1]/div[1]/nav/a[3]    10
  Click Element                           Xpath=//*[@id="root"]/div[1]/div[1]/nav/a[3]

E apresentar a home de "Refino Propostas"
  Wait Until Element Is Visible           css:h1.sc-jffHpj.lLwQZ
  Click Element                           css:h1.sc-jffHpj.lLwQZ

E clicar no botão "Dowload All" da Refino Propostas
  Wait Until Element Is Visible           css:button.MuiButtonBase-root.MuiIconButton-root.iconbtn    10
  Click Element                           css:button.MuiButtonBase-root.MuiIconButton-root.iconbtn

#

AREA ADM | CONTA DE LUZ | Caso de teste 02: Logar na área do adm, entrar em "Refino Propostas" realizar pesquisa por usuário

E clicar na opção "Refino Propostas"
  Quando clicar na opção "Refino Propostas"

Então deverá realizar buscar informações retornando o valor pesquisado "${N_VALOR_REFINO}" Refino Propostas
  Page Should Contain Element             Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[2]/div/div[1]/div/div/div/div[3]/table/tbody/tr[2]/td[1]/a
  Capture Page Screenshot

#

### ÁREA DO USUÁRIO ADMINISTRADOR -  SET UP CPFL PAULISTA ###
AREA ADM | SET UP CPFL PAULISTA | Caso de teste 01: Logar na área do adm, entrar em "Set Up CPFL Paulista" realizar pesquisa por stauts.

E clicar na opção "Set Up Paulista"
  Wait Until Element Is Visible           css:a.nav-item[href="/set-up-cpfl"]
  Page Should Contain Element             css:a.nav-item[href="/set-up-cpfl"]
  Click Element                           css:a.nav-item[href="/set-up-cpfl"]

E apresentar a home de "Set Up Paulista"
  Wait Until Element Is Visible           css:h1.sc-jffHpj.lLwQZ      10

Quando eu clicar no botão "Search" Set Up CPFL
  Wait Until Element Is Visible           Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div/div[1]/div/div/div/div[1]/div/div/button
  Page Should Contain Element             Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div/div[1]/div/div/div/div[1]/div/div/button
  Click Element                           Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div/div[1]/div/div/div/div[1]/div/div/button
  Sleep                                   8

Então deverá apresentar status de "Aguardando Ativação"
  Wait Until Element Is Visible           Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div/div[1]/div/div/div/div[3]/table/tbody/tr[1]/td[6]/span    10
  Page Should Contain Element             Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div/div[1]/div/div/div/div[3]/table/tbody/tr[1]/td[6]/span
  Capture Page Screenshot

#

AREA ADM | SET UP CPFL PAULISTA | Caso de teste 02: Logar na área do adm, entrar em "Set Up CPFL Paulista" e clicar "Download All" excel.

Quando clicar na opção "Set Up Paulista"
  E clicar na opção "Set Up Paulista"

E clicar no botão "Dowload All" da Set Up CPFL
  Wait Until Element Is Visible           css:a.nav-item[href="/set-up-cpfl"]
  Page Should Contain Element             css:a.nav-item[href="/set-up-cpfl"]
  Click Element                           css:span.MuiIconButton-label
  Sleep                                   8

#

AREA ADM | SET UP CPFL PAULISTA | Caso de teste 03: Logar na área do adm, entrar em "Set Up CPFL Paulista", clicar "Baixar modelo" e clicar "Download All" excel.

Quando clicar no botão "Baixar Modelo" da Set Up CPFL
  Wait Until Element Is Visible           css:button.sc-fXazdy.dRymUt
  Page Should Contain Element             css:button.sc-fXazdy.dRymUt
  Click Element                           css:button.sc-fXazdy.dRymUt

E apresentar a home de "Ativação em massa"
  Wait Until Element Is Visible           css:h1.sc-jffHpj.lLwQZ
  Page Should Contain Element             css:h1.sc-jffHpj.lLwQZ

E clicar no botão "Dowload All" da "Ativação em massa"
  Wait Until Element Is Visible           css:button.MuiButtonBase-root.MuiIconButton-root.iconbtn
  Page Should Contain Element             css:button.MuiButtonBase-root.MuiIconButton-root.iconbtn
  Click Element                           css:button.MuiButtonBase-root.MuiIconButton-root.iconbtn

#

AREA ADM | SET UP CPFL PAULISTA | Caso de teste 04: Logar na área do adm, entrar em "Set Up CPFL Paulista". pesquisar contrato na "ativação em massa" e verificar ativação.

E clicar no botão "Baixar Modelo" da Set Up CPFL
  Quando clicar no botão "Baixar Modelo" da Set Up CPFL

Quando clicar no botão "Search" Ativação em massa
  Wait Until Element Is Visible            Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[4]/div/div/div/div/div/div[1]/div/div/button
  Page Should Contain Element              Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[4]/div/div/div/div/div/div[1]/div/div/button
  Click Element                            Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[4]/div/div/div/div/div/div[1]/div/div/button
  Sleep                                    8

Então deverá realizar apresentar contratos para ativação "aguardando ativação"
  Wait Until Element Is Visible            Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[4]/div/div/div/div/div/div[3]/table/tbody/tr[1]/td[3]/p
  Page Should Contain Element              Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[4]/div/div/div/div/div/div[3]/table/tbody/tr[1]/td[3]/p
  Capture Page Screenshot

#

AREA ADM | SET UP CPFL PAULISTA | Caso de teste 04: Logar na área do adm, entrar em "Set Up CPFL Paulista". pesquisar contrato, verificar ativação e ativar contrato

E clicar no botão "Search" Ativação em massa
  Quando clicar no botão "Search" Ativação em massa

E apresentar contratos para ativação "aguardando ativação"
  Então deverá realizar apresentar contratos para ativação "aguardando ativação"

E clicar no primeiro contrato da lista
  Wait Until Element Is Visible              css:a.sc-jNnpgg.jclDow[href="/contratos/3023"]
  Page Should Contain Element                css:a.sc-jNnpgg.jclDow[href="/contratos/3023"]
  Click Element                              css:a.sc-jNnpgg.jclDow[href="/contratos/3023"]

E presemtar a tela de "Detalhes de contrato"
  Wait Until Element Is Visible               css:h1.sc-jffHpj.lLwQZ
  Page Should Contain Element                 css:h1.sc-jffHpj.lLwQZ

E clicar no btoão "Ativar Contrato"
  Wait Until Element Is Visible               Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div[1]/div[2]/div/div[3]/div/button
  Page Should Contain Element                 Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div[1]/div[2]/div/div[3]/div/button
  Click Element                               Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div[1]/div[2]/div/div[3]/div/button

Quando apresentar tela de confirmação "Deseja ativar o contrato para o cliente?"
  Wait Until Element Is Visible               Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div[1]/div[2]/div/div[7]/div/h1
  Page Should Contain Element                 Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div[1]/div[2]/div/div[7]/div/h1
  Capture Page Screenshot

E clicar no botão "Ativar o contrato"
  Wait Until Element Is Visible               Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div[1]/div[2]/div/div[7]/div/div[2]/div[2]/button
  Page Should Contain Element                 Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div[1]/div[2]/div/div[7]/div/div[2]/div[2]/button
  Click Element                               Xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[3]/div[1]/div[2]/div/div[7]/div/div[2]/div[2]/button
  Sleep                                       8

Então o status do contrato deverá mudar para "Ativo"
  Wait Until Element Is Visible               css:span.sc-efHYUO.dwCzsg
  Page Should Contain Element                 css:span.sc-efHYUO.dwCzsg
  Capture Page Screenshot
