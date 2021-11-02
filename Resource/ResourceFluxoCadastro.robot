*** Settings ***

Library		          SeleniumLibrary
Library             FakerLibrary
# Library             Requests

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

#

### FLUXO DE CADASTRO PAGE 1 - CADASTRO ###
Page_1 - Fluxo de cadastro | Caso de teste 01: Cadastro simples "caminho feliz"

Dado que estou na pagina home
    Go To     ${URL}
    Title Should Be   ${VALIDAR_PAGINA}

E clicar no botão Cadastre-se
  Click Element    xPath=//*[@id="cadastro_lp"]

E preencher "${NOME_FAKER}" no campo nome
  Wait Until Element Is Visible       name=name
  # ${NOME_FAKER}                       FakerLibrary.Name
  Input Text                          name=name   ${NOME_FAKER}
  # Should Be Equal    ${NOME}      Qualidade Qualidade

E preencher "${EMAIL_FAKER}" no campo e-mail
  Wait Until Element Is Visible    name=email
  ${EMAIL_FAKER}                   FakerLibrary.Email
  Input Text                       name=email    ${EMAIL_FAKER}
  # Should Be Equal   ${EMAIL}      eder16.estevan@floraenergia.com.br

E preencher "${CELULAR_FAKER}" no campo celular
  Wait Until Element Is Visible       name=phone_number
  # ${CELULAR_FAKER}                      FakerLibrary. Mobile
  Input Text                          name=phone_number   ${CELULAR_FAKER}
  # Should Be Equal   ${CELULAR}

E preencher "${UF}" no campo uf
  Click Element     css:input[role=combobox]
  Input Text        css:input[role=combobox]    ${UF}
  # Page Should Contain        ${UF}  SP

E preencher "${CIDADE_FAKER}" no campo cidade
  Click Element                         xPath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[2]/div[5]/div[2]/input
  # ${CIDADE_FAKER}                      FakerLibrary.City
  Input Text                            xPath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[2]/div[5]/div[2]/input   ${CIDADE_FAKER}
  # Should Be Equal     ${$CIDADE}    Campinas

E preencher "${VALOR_LUZ}" no campo Conta de luz
  Input Text    name=estimated_electric_bill  ${VALOR_LUZ}
  # Should Be Equal    ${VALOR_LUZ}  1000

# E preencher "${PROMO_CODE}" no campo Cód Promocional
#   Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[2]/div[7]/div/span
#   Click Element                    css:input.form-control[name="promocode"]
#   Input Text                       css:input.form-control[name="promocode"]      ${PROMO_CODE}
#   Capture Page Screenshot

Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Click Element    css:button.mt-2.btn-register.btn.btn-primary

Então seguir com o fluxo de cadastro e validar tela de "Proposta"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[1]/div[2]/div   10
  Page Should Contain Element      Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[1]/div[2]/div
  Capture Page Screenshot

#

  ### FLUXO DE CADASTRO PAGE 2 - PROPOSTA ###
Page_2 - Fluxo de cadastro | Caso de teste 01: Proposta simples

E clicar no botão "Avançar" no fluxo de cadastro
  Quando eu clicar no botão "Avançar" no fluxo de cadastro

E seguir com o fluxo de cadastro e validar tela de "Proposta"
  Então seguir com o fluxo de cadastro e validar tela de "Proposta"

Quando eu clicar no botão "Avançar" proposta
  Wait Until Element Is Visible   Xpath=//*[@id="root"]/div[1]/div/div[4]/div[2]/button  10
  Page Should Contain Element     Xpath=//*[@id="root"]/div[1]/div/div[4]/div[2]/button
  Click Element                   Xpath=//*[@id="root"]/div[1]/div/div[4]/div[2]/button

Então seguir com o fluxo de cadastro e validar tela de "assinatura"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[1]/div[3]/div  10
  Page Should Contain Element      xPath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[1]/div[3]/div
  Capture Page Screenshot

#

#   ### FLUXO DE CADASTRO PAGE 3 - ASSINATURA ###
Page_3 - Fluxo de cadastro | Caso de teste 01: Assinatura simples

E clicar no botão "Avançar" proposta
  Quando eu clicar no botão "Avançar" proposta

E seguir com o fluxo de cadastro e validar tela de "assinatura"
  Então seguir com o fluxo de cadastro e validar tela de "assinatura"

E preencher "${CEP}" no campo Cep
  Wait Until Element Is Visible     Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[4]/div/div/div/span     10
  Click Element                     css:input[name="postal_code"]
  Input Text                        css:input[name="postal_code"]    ${CEP}
  # Should Be Equal   ${CEP}    13088-364

E validar endereço "${ENDERECO}"
  Wait Until Element Is Visible     Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[4]/div/div[2]/div[1]/div[1]/span
  Textfield Should Contain    css:input.form-control[name="street"]      ${ENDERECO}
  Capture Page Screenshot

E preencher "${NUMERO_END}" no campo número
  Wait Until Element Is Visible     Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[4]/div/div[2]/div[1]/div[2]/span
  Click Element    css:input.form-control[name="number"]
  Input Text       css:input.form-control[name="number"]   ${NUMERO_END}
  # Should Be Equal  ${NUMERO_END}  100

E preencher "${COMPLEMENTO}" no campo complemento
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[4]/div/div[2]/div[2]/div[1]/span
  Click Element       css:input.form-control[name="complement"]
  Input Text          css:input.form-control[name="complement"]     ${COMPLEMENTO}
  # Should Be Equal     ${COMPLEMENTO}    Barraco 2

E validar o bairro "${BAIRRO}"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[4]/div/div[2]/div[3]/div[2]/span
  Textfield Should Contain         css:input.form-control[name="neighborhood"]    ${BAIRRO}
  Capture Page Screenshot

E validar o nome da cidade "${CIDADE}"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[4]/div/div[2]/div[3]/div[1]/span
  Textfield Should Contain         css:input.form-control[name="city"]    ${CIDADE}
  Capture Page Screenshot

E validar o nome do estado "${ESTADO}"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[4]/div/div[2]/div[3]/div[2]/span
  # Textfield Should Contain         css:select.form-control   São Paulo
  Capture Page Screenshot

E preencher "${N_TITULAR}" no campo nome do titular
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[5]/div[1]/div/span
  Click Element       css:input.form-control[name="holder"]
  Input Text          css:input.form-control[name="holder"]    ${N_TITULAR}
  # Should Be Equal     ${N_TITULAR}    Qa Qualidade

E preencher "${EMAIL_TITULAR}" no campo e-mail do titular
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[5]/div[2]/div/span
  Click Element       css:input.form-control[name="email"]
  Input Text          css:input.form-control[name="email"]    ${EMAIL_TITULAR}
  # Should Be Equal     ${EMAIL_TITULAR}    eder16.estevan@floraenergia.com.br

E preencher "${CPF_CNPJ_TITULAR}" no campo CPF/CNPJ
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[5]/div[3]/div/span
  Click Element       css:input.form-control[name="document"]
  Input Text          css:input.form-control[name="document"]    ${CPF_CNPJ_TITULAR}
  # Should Be Equal     ${CPF_CNPJ_TITULAR}    23.792.917/0002-52

Quando eu clicar no botão "Enviar contrato"
  Wait Until Element Is Visible   Xpath=//*[@id="root"]/div[1]/div/div[4]/div[2]/div/button
  Click Element                   Xpath=//*[@id="root"]/div[1]/div/div[4]/div[2]/div/button
  Capture Page Screenshot

Então seguir com o fluxo de cadastro e validar tela de "Envio de contrato"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/h3   10
  Page Should Contain Element      Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/h3
  Capture Page Screenshot

#

  ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO NOME ##
PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 02: No campo "Nome" NÃO permitir gravar apenas com o primeiro Nome

Então não permitir avançar para proposta
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div
  Page Should Contain Element        Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[1]

E apresentar retorno ao usuário nome completo "${TOAST_NOME_COMPLETO}"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[2]/div
  Should Be Equal                  ${TOAST_NOME_COMPLETO}    Insira seu nome completo.
  Capture Page Screenshot


PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 03: No campo "Nome" NÃO deve permitir gravar números

E apresentar retorno ao usuário nome inválido "${TOAST_NOME_VALIDO}"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[2]/div
  Should Be Equal                  ${TOAST_NOME_VALIDO}    Insira um nome válido.
  Capture Page Screenshot

PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 04: No campo "Nome" ao teclar espaço NÃO deve ser interpretado como caracter
PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 05: No campo "Nome" NÃO deve permitir caracteres especiais
PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 06: No Campo "Nome" NÃO permitir cadastro com o sobrenome contendo caracteres

PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 07: No Campo "Nome" permitir cadastro com o Nome e sobrenome

Então permitir avançar para o fluxo de proposta validando tela de "Proposta"
  Então seguir com o fluxo de cadastro e validar tela de "Proposta"

#

  ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO EMAIL ##
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO EMAIL | CASO 01: No campo "Email" não permitir gravar com caixa alta

E apresentar retorno ao usuário e-mail inválido "${TOAST_EMAIL_INVALIDO}"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[2]/div
  Should Be Equal                  ${TOAST_EMAIL_INVALIDO}    Insira um E-mail válido.
  Capture Page Screenshot

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO EMAIL | CASO 02: No campo "Email" não permitir gravar com espaço
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO EMAIL | CASO 03: No campo "Email" não permitir gravar com o campo em branco

#

 ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO CELULAR ##
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CELULAR | CASO 01: No campo "Celular" permitir apenas números

E apresentar retorno ao usuário número inválido "${TOAST_NUMERO_INVALIDO}"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[2]/div
  Should Be Equal                  ${TOAST_NUMERO_INVALIDO}   Insira número válido.
  Capture Page Screenshot

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CELULAR | CASO 02: No campo "Celular" permitir gravar após inserir 12 digitos com DDD
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CELULAR | CASO 03: No campo "Celular" não permitir gravar dados menor que 12 digitos
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CELULAR | CASO 04: No campo "Celular" não permitir gravar dados em branco

#

  ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO UF ##
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO UF | CASO 01: No campo "UF" não permitir inserir caracteres especiais

Quando preencher incorretamente "${UF_INVALIDO}" no campo uf
  Click Element                       css:input[role=combobox]
  Input Text                          css:input[role=combobox]    ${UF_INVALIDO}

Então não apresentar o campo cidade
  Page Should Not Contain Element       Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[2]/div[5]/div[2]/input

E apresentar retorno ao usuário UF inválido "${TOAST_UF_INVALIDO}"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[2]/div
  Should Be Equal                  ${TOAST_UF_INVALIDO}    Por favor selecione um estado da lista.
  Capture Page Screenshot

E não permitir avançar para proposta
  Então não permitir avançar para proposta

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO UF | CASO 03: No campo "UF" não aceitar campo em branco
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO UF | CASO 02: No campo "UF" não permitir inserir números

#

      ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO CIDADE ##
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CIDADE | CASO 01: No campo "Cidade" permitir inserir apenas (-) de caracteres especiais

E apresentar retorno ao usuário cidade inválida "${TOAST_CIDADE_INVALIDO}"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[2]/div
  Should Be Equal                  ${TOAST_CIDADE_INVALIDO}    Por favor revise o campo Cidade.
  Capture Page Screenshot

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CIDADE | CASO 02: No campo "Cidade" não permitir inserir números
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CIDADE | CASO 03: No campo "Cidade" não permitir campo em branco

#

  ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO CONTA DE LUZ MENSAL ##
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CONTA DE LUZ MENSAL | CASO 01: No campo "conta de luz mensal" não permitir inserir caracteres especiais

E apresentar retorno ao usuário valor de conta de luz inválida "${TOAST_CONTALUZ_INVALIDO}"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[2]/div
  Should Be Equal                  ${TOAST_CONTALUZ_INVALIDO}    Insira um valor de conta de luz válido.
  Capture Page Screenshot

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CONTA DE LUZ MENSAL | CASO 02: No campo "conta de luz mensal" permitir inserir no máximo 6 digitos
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CONTA DE LUZ MENSAL | CASO 03: No campo "conta de luz mensal" não permitir inserir Letras
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CONTA DE LUZ MENSAL | CASO 04: No campo "conta de luz mensal" não permitir gravar com o valor zero

#

    ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO CÓD PROMOCIONAL ##
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CÓD PROMOCIONAL | CASO 01: No campo "Cód Promocional" campo livre para digitação

E preencher "${PROMO_CODE}" no campo Cód Promocional "promocode"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[1]/div/div[4]/div[1]/div[2]/div[7]/div/span
  Click Element                    css:input.form-control[name="promocode"]
  Input Text                       css:input.form-control[name="promocode"]      ${PROMO_CODE}
  Capture Page Screenshot

E apresentar retorno ao usuário promocode inválido "${TOAST_PROMOCODE_INVALIDO}"
  Wait Until Element Is Visible    Xpath=//*[@id="root"]/div[2]/div
  Should Be Equal                  ${TOAST_PROMOCODE_INVALIDO}   Código promocional não existe.
  Capture Page Screenshot

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CÓD PROMOCIONAL | CASO 02: No campo "Cód Promocional" permitir promocode especifico ex: BAND
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CÓD PROMOCIONAL | CASO 03: No campo "Cód Promocional" não permitir avançar para proposta caso não seja um promocode válido
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CÓD PROMOCIONAL | CASO 04: No campo "Cód Promocional" Não permitir avançar para proposta ao clicar no espaço
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CÓD PROMOCIONAL | CASO 05: No campo "Cód Promocional" permitir avançar para proposta com o campo em branco

#

    ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CHECKBOX DE POLITICA DE PRIVACIDADE ##
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CHECKBOX DE POLITICA DE PRIVACIDADE | CASO 01: Checkbox preenchido permitir avançar para proposta

E preencher Checkbox de privacidade
  Wait Until Element Is Visible
  Checkbox Should Be Selected      css:input.jss4


PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CHECKBOX DE POLITICA DE PRIVACIDADE | CASO 01: Checkbox não preenchido não permitir avançar para proposta




## FLUXO DE CADASTRO PAGE 3 -ASSINATURA ###
# Page_3 - Fluxo de cadastro | Caso de teste 01: Assinatura simples
#
# E seguir com o fluxo de cadastro e validar tela de "Proposta"
#   Então seguir com o fluxo de cadastro e validar tela de "Proposta"
