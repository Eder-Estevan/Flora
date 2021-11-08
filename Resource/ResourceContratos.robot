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

Então deverá realizar o download do arquivo
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




Área do administrativo | Caso de teste 02: Realizar login simples

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
  Wait Until Element Is Visible     css:h1.sc-jffHpj.lLwQZ
  Should Be Equal                  ${CONTRATOS_HOME}    Contratos
  # Capture Page Screenshot

E descrever no campo SEARCH o contrato "${N_CONTRATO}"
  Wait Until Element Is Visible     css:div.sc-eCbnUT.fElMzr
  Click Element                     css:div.sc-eCbnUT.fElMzr
  Input Text                        css:input.sc-iBzEeX.glZmJR    ${N_CONTRATO}

Quando eu clicar no botão "Search"
  Wait Until Element Is Visible     xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[2]/div/div[1]/div/div/div/div[1]/div/div/button
  Click Element                     xpath=//*[@id="root"]/div[1]/div[2]/div/div/div[2]/div/div[1]/div/div/div/div[1]/div/div/button

Então deverá realizar buscar informações retornando o contrato pesquisado "${N_CONTRATO}"
  Wait Until Element Is Visible     css:a.sc-jNnpgg.jclDow[href="/contratos/3433"]      10
  Capture Page Screenshot
