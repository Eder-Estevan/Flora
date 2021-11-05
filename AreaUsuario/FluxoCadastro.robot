*** Settings ***

Resource      ../Resource/ResourceFluxoCadastro.robot
Test Setup    Abrir navegador
# Test Teardown   Fechar navegador


*** Test Case ***

### FLUXO DE CADASTRO PAGE 1 - CADASTRO ###
Page_1 - Fluxo de cadastro | Caso de teste 01: Cadastro simples "caminho feliz"
  [Tags]  Page1_nome_caso1

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Qualidade" no campo nome
  E preencher "eder40.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então seguir com o fluxo de cadastro e validar tela de "Proposta"

#

      ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO NOME ##

PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 02: No campo "Nome" NÃO permitir gravar apenas com o primeiro Nome
  [Tags]  Page1_nome_caso2

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade" no campo nome
  E preencher "eder40.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário nome completo "Insira seu nome completo."

#

PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 03: No campo "Nome" NÃO deve permitir gravar números junto com o nome e sobrenome
  [Tags]  Page1_nome_caso3

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade123 123 " no campo nome
  E preencher "eder40.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário nome inválido "Insira um nome válido."

#

PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 04: No campo "Nome" ao teclar espaço NÃO deve ser interpretado como caracter
  [Tags]  Page1_nome_caso4

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade " no campo nome
  E preencher "eder40.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário nome completo "Insira seu nome completo."

#

PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 05: No campo "Nome" NÃO deve permitir caracteres especiais
  [Tags]  Page1_nome_caso5

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "!@#$%¨&*@#$%¹²³£¢¬§°ªº₢´¨" no campo nome
  E preencher "eder40.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário nome inválido "Insira um nome válido."

#

PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 06: No Campo "Nome" NÃO permitir cadastro com o sobrenome contendo caracteres
  [Tags]  Page1_nome_caso6

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade !@#$%¨&*@#$%¹²³£¢¬§°ªº₢´¨" no campo nome
  E preencher "eder40.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário nome inválido "Insira um nome válido."

#

PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 07: No Campo "Nome" permitir cadastro com o Nome e sobrenome
  [Tags]  Page1_nome_caso7

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "eder40.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então permitir avançar para o fluxo de proposta validando tela de "Proposta"

PAGE_1 - FLUXO DE CADASTRO | VALIDANDO CAMPO NOME | CASO 08: No Campo "Nome" Não permitir inserir apenas números
    [Tags]  Page1_nome_caso8

    Dado que estou na pagina home
    E clicar no botão Cadastre-se
    E preencher "1234566" no campo nome
    E preencher "eder40.estevan@floraenergia.com.br" no campo e-mail
    E preencher "11111111111" no campo celular
    E preencher "SP" no campo uf
    E preencher "São Carlos" no campo cidade
    E preencher "1000" no campo Conta de luz
    # E preencher " " no campo Cód Promocional
    Quando eu clicar no botão "Avançar" no fluxo de cadastro
    Então permitir avançar para o fluxo de proposta validando tela de "Proposta"

#

       ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO EMAIL ##
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO EMAIL | CASO 01: No campo "Email" não permitir gravar com caixa alta
  [Tags]  Page1_email_caso1

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "FLORA@ENERGIA.COM.BR" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário e-mail inválido "Insira um E-mail válido."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO EMAIL | CASO 02: No campo "Email" não permitir gravar com espaço
  [Tags]  Page1_email_caso2

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora floraa@energia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz'
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário e-mail inválido "Insira um E-mail válido."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO EMAIL | CASO 03: No campo "Email" não permitir gravar com o campo em branco
  [Tags]  Page1_email_caso3

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher " " no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário e-mail inválido "Insira um E-mail válido."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO EMAIL | CASO 04: No campo "Email" não permitir gravar com acentuação
  [Tags]  Page1_email_caso4

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "né@né.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário e-mail inválido "Insira um E-mail válido."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO EMAIL | CASO 05: No campo "Email" não permitir gravar com a letra Ç
  [Tags]  Page1_email_caso5

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "açougue@açougue.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário e-mail inválido "Insira um E-mail válido."

#

       ### FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO CELULAR ##
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CELULAR | CASO 01: No campo "Celular" permitir apenas números
  [Tags]  Page1_celular_caso1

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "Teste celular" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário número inválido "Insira número válido."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CELULAR | CASO 02: No campo "Celular" permitir gravar após inserir 12 digitos com DDD
  [Tags]  Page1_celular_caso2

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "123456789012345" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então permitir avançar para o fluxo de proposta validando tela de "Proposta"

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CELULAR | CASO 03: No campo "Celular" não permitir gravar dados menor que 12 digitos
  [Tags]  Page1_celular_caso3

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário número inválido "Insira número válido."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CELULAR | CASO 04: No campo "Celular" não permitir gravar dados em branco
  [Tags]  Page1_celular_caso4

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher " " no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário número inválido "Insira número válido."

#

  ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO UF ##

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO UF | CASO 01: No campo "UF" não permitir inserir caracteres especiais
  [Tags]  Page1_uf_caso1

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901 " no campo celular
  Quando preencher incorretamente "%%" no campo uf
  Então não apresentar o campo cidade
  E apresentar retorno ao usuário UF inválido "Por favor selecione um estado da lista."
  E não permitir avançar para proposta

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO UF | CASO 02: No campo "UF" não permitir inserir números
  [Tags]  Page1_uf_caso2

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901 " no campo celular
  Quando preencher incorretamente "33" no campo uf
  Então não apresentar o campo cidade
  E apresentar retorno ao usuário UF inválido "Por favor selecione um estado da lista."
  E não permitir avançar para proposta

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO UF | CASO 03: No campo "UF" não aceitar campo em branco
  [Tags]  Page1_uf_caso3

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901 " no campo celular
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário número inválido "Insira número válido."

#

     ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO CIDADE ##
#
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CIDADE | CASO 01: No campo "Cidade" permitir inserir apenas (-) de caracteres especiais
  [Tags]  Page1_cidade_caso1

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher "!@#$%¨&*--" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário cidade inválida "Por favor revise o campo Cidade."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CIDADE | CASO 02: No campo "Cidade" não permitir inserir números
  [Tags]  Page1_cidade_caso2

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher "0987654321" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário cidade inválida "Por favor revise o campo Cidade."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CIDADE | CASO 03: No campo "Cidade" não permitir campo em branco
  [Tags]  Page1_cidade_caso3

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher " " no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário cidade inválida "Por favor revise o campo Cidade."

#

   ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO CONTA DE LUZ MENSAL ##
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CONTA DE LUZ MENSAL | CASO 01: No campo "conta de luz mensal" não permitir inserir caracteres especiais
  [Tags]  Page1_luzmensal_caso1

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "@@@@" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário valor de conta de luz inválida "Insira um valor de conta de luz válido."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CONTA DE LUZ MENSAL | CASO 02: No campo "conta de luz mensal" permitir gravar campos em branco
  [Tags]  Page1_luzmensal_caso2

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher " " no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário valor de conta de luz inválida "Insira um valor de conta de luz válido."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CONTA DE LUZ MENSAL | CASO 03: No campo "conta de luz mensal" não permitir inserir Letras
  [Tags]  Page1_luzmensal_caso3

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "FLORA" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário cidade inválida "Por favor revise o campo Cidade."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CONTA DE LUZ MENSAL | CASO 04: No campo "conta de luz mensal" não permitir gravar com o valor zero
  [Tags]  Page1_luzmensal_caso4

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "0" no campo Conta de luz
  # E preencher " " no campo Cód Promocional
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário cidade inválida "Por favor revise o campo Cidade."

#

  ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CAMPO CÓD PROMOCIONAL ##
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CÓD PROMOCIONAL | CASO 01: No campo "Cód Promocional" campo livre para digitação e não permitir avançar para proposta
  [Tags]  Page1_promocode_caso1

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  E preencher "!@#$%¨&*()1234567890ASDFGHJKLºªº?°₢" no campo Cód Promocional "promocode"
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário promocode inválido "Código promocional não existe."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CÓD PROMOCIONAL | CASO 02: No campo "Cód Promocional" permitir gravar promocode especifico ex: BAND
  [Tags]  Page1_promocode_caso2

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  E preencher "BAND" no campo Cód Promocional "promocode"
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então permitir avançar para o fluxo de proposta validando tela de "Proposta"

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CÓD PROMOCIONAL | CASO 03: No campo "Cód Promocional" não permitir avançar para proposta caso não seja um promocode válido
  [Tags]  Page1_promocode_caso3

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  E preencher "GLOBO" no campo Cód Promocional "promocode"
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário promocode inválido "Código promocional não existe."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CÓD PROMOCIONAL | CASO 04: No campo "Cód Promocional" Não permitir avançar para proposta ao clicar no espaço
  [Tags]  Page1_promocode_caso4

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  E preencher " " no campo Cód Promocional "promocode"
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então não permitir avançar para proposta
  E apresentar retorno ao usuário promocode inválido "Código promocional não existe."

#

PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CAMPO CÓD PROMOCIONAL | CASO 05: No campo "Cód Promocional" permitir avançar para proposta com o campo em branco
  [Tags]  Page1_promocode_caso5

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional "promocode"
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então permitir avançar para o fluxo de proposta validando tela de "Proposta"

#

       ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO CHECKBOX DE POLITICA DE PRIVACIDADE ##
#
PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CHECKBOX DE POLITICA DE PRIVACIDADE | CASO 01: Permitir avançar para proposta se ckeckbox estiver preenchido
  [Tags]  Page1_privacidade_caso1

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Teste" no campo nome
  E preencher "flora@energia.com.br" no campo e-mail
  E preencher "12345678901" no campo celular
  E preencher "SP" no campo uf
  E preencher "São Carlos" no campo cidade
  E preencher "1000" no campo Conta de luz
  # E preencher " " no campo Cód Promocional "promocode"
  E preencher Checkbox de privacidade
  Quando eu clicar no botão "Avançar" no fluxo de cadastro
  Então permitir avançar para o fluxo de proposta validando tela de "Proposta"

#

# PAGE_1 | FLUXO DE CADASTRO | VALIDANDO CHECKBOX DE POLITICA DE PRIVACIDADE | CASO 01: Checkbox não preenchido não permitir avançar para proposta
#
#
#
#       ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO FAQ ##
#
# PAGE_1 | FLUXO DE CADASTRO | VALIDANDO FAQ | CASO 01: Validar abertura do FAQ e conteudo de perguntas frequentes
#
#
#
#       ## FLUXO DE CADASTRO PAGE 1 - VALIDANDO FAQ ##
#
# PAGE_1 | FLUXO DE CADASTRO | VALIDANDO FAQ | CASO 01: Validar abertura do Video e conteudo do video
#
#
#
#
#
#
#
#
#
#
#
#
#
#
# #
# # ### FLUXO DE CADASTRO PAGE 2 - PROPOSTA ###
# Page_2 - Fluxo de cadastro | Caso de teste 01: Proposta simples
#
#   Dado que estou na pagina home
#   E clicar no botão Cadastre-se
#   E preencher "Qualidade Qualidade" no campo nome
#   E preencher "eder41.estevan@floraenergia.com.br" no campo e-mail
#   E preencher "11111111111" no campo celular
#   E preencher "SP" no campo uf
#   E preencher "Campinas" no campo cidade
#   E preencher "1000" no campo Conta de luz
#   # E preencher " " no campo Cód Promocional
#   E clicar no botão "Avançar" no fluxo de cadastro
#   E seguir com o fluxo de cadastro e validar tela de "Proposta"
#   Quando eu clicar no botão "Avançar" proposta
#   Então seguir com o fluxo de cadastro e validar tela de "assinatura"
#
#
  ## FLUXO DE CADASTRO PAGE 3 -ASSINATURA ###
# Page_3 - Fluxo de cadastro | Caso de teste 01: Assinatura simples
#   [Tags]  Page1_assinatura_caso1
#
#   Dado que estou na pagina home
#   E clicar no botão Cadastre-se
#   E preencher "Qualidade Qualidade" no campo nome
#   E preencher "eder55.estevan@floraenergia.com.br" no campo e-mail
#   E preencher "11111111111" no campo celular
#   E preencher "SP" no campo uf
#   E preencher "São Carlos" no campo cidade
#   E preencher "1000" no campo Conta de luz
#   # E preencher " " no campo Cód Promocional
#   E clicar no botão "Avançar" no fluxo de cadastro
#   E seguir com o fluxo de cadastro e validar tela de "Proposta"
#   E clicar no botão "Avançar" proposta
#   E seguir com o fluxo de cadastro e validar tela de "assinatura"
#   E preencher "13560-290" no campo Cep
#   # E validar endereço "Rua Manoella Candida de Paula"
#   E preencher "100" no campo número
#   E preencher "Barraco 2" no campo complemento
#   # E validar o bairro "Núcleo Residencial Getúlio Vargas"
#   # E validar o nome da cidade "Campinas"
#   # E validar o nome do estado "São Paulo"
#   E preencher "Qa Qualidade" no campo nome do titular
#   E preencher "eder.estevan@floraenergia.com.br" no campo e-mail do titular
#   E preencher "23.792.917/0002-52" no campo CPF/CNPJ
#   Quando eu clicar no botão "Enviar contrato"
#   Então seguir com o fluxo de cadastro e validar tela de "Envio de contrato"
