*** Settings ***
Library		          SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${URL}        https://staging.floraenergia.com.br/

*** Keywords ***
Abrir navegador
    Open Browser    ${URL}    ${BROWSER}
#     Set Window Size   1920
# # Maximize tela
#     Maximize Browser Window

Fechar navegador
    Close Browser

Acessar página home do site
    Title Should Be   Flora Energia | Economia e Sustentabilidade

Clicar no botão Cadastre-se
    Click Element   id=cadastro_lp

Digitar seu nome "${NOME}" no campo nome
    Input Text    name=name   ${NOME}
    Should Be Equal    ${NOME}   Eder Estevan

Digitar seu e-mail "${EMAIL}" no campo Email
    Input Text    name=email    ${EMAIL}

Digitar o número do seu celular "${CELULAR}" no campo Celular
    Input Text    name=phone_number   ${CELULAR}

Digitar a sigla do seu estado "${UF}" no campo UF
  Click Element    dom=document.Get Value    locator: WebElement | str

  # Click Element         aria-expanded="false"   ${UF}

   # Input Text     uf.value = 'sp'     ${UF}

Digitar a cidade "${$CIDADE}" no campo Cidade
    Input Text    role=combobox   ${$CIDADE}

Digitar o valor da conta de luz "${VALOR}" no campo Conta de luz mensal
    Input Text    name=estimated_electric_bill  ${VALOR}

Digitar o código "${COD_PROMO}" no campo Cód Promocional
    Input Text   name=promocode   ${COD_PROMO}
