*** Settings ***

Resource      ../Resource/ResourceLogin.robot
Test Setup    Abrir navegador
# Test Teardown   Fechar navegador

### Necessário ajustar os testes, implementando validações,
### Conexão no banco de dados e exclusão de informações "limpeza dos dados antes da execução dos testes"

*** Test Case ***

### Fluxo de Cadastro | Melhoria | Band - Ajuste no PromoCode ###
Caso de teste 01: Fluxo de cadastro | page_1 cadastro simples

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Qualidade" no campo nome
  E preencher "eder16.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "Campinas" no campo cidade
  E preencher "1000" no campo Conta de luz
  E preencher "Band" no campo Cód Promocional
  Quando eu clicar no botão "Avançar"
  Então seguir com o fluxo de cadastro e validar tela de "Proposta"

Caso de teste 02: Fluxo de cadastro | page_1 cadastro simples

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Qualidade" no campo nome
  E preencher "eder17.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "PR" no campo uf
  E preencher "Jacarezinho" no campo cidade
  E preencher "1000" no campo Conta de luz
  E preencher "Band" no campo Cód Promocional
  Quando eu clicar no botão "Avançar"
  Então seguir com o fluxo de cadastro e validar tela de "Proposta"

Caso de teste 03: Fluxo de cadastro | page_1 cadastro simples

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Qualidade" no campo nome
  E preencher "eder18.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "RJ" no campo uf
  E preencher "Barra Do Piraí" no campo cidade
  E preencher "849" no campo Conta de luz
  E preencher "Band" no campo Cód Promocional
  Quando eu clicar no botão "Avançar"
  Então seguir com o fluxo de cadastro e validar tela de "Proposta"

Caso de teste 04: Fluxo de cadastro | page_1 cadastro simples

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Qualidade" no campo nome
  E preencher "eder19.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "MG" no campo uf
  E preencher "Água Boa" no campo cidade
  E preencher "1000" no campo Conta de luz
  E preencher "Band" no campo Cód Promocional
  Quando eu clicar no botão "Avançar"
  Então seguir com o fluxo de cadastro e validar tela de "Proposta"

  Caso de teste 01: Fluxo de cadastro | page_1 cadastro simples

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Qualidade" no campo nome
  E preencher "eder16.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "SP" no campo uf
  E preencher "Campinas" no campo cidade
  E preencher "1000" no campo Conta de luz
  E preencher "Band1" no campo Cód Promocional
  Quando eu clicar no botão "Avançar"
  Então seguir com o fluxo de cadastro e validar tela de "Proposta"

Caso de teste 02: Fluxo de cadastro | page_1 cadastro simples

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Qualidade" no campo nome
  E preencher "eder17.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "PR" no campo uf
  E preencher "Jacarezinho" no campo cidade
  E preencher "1000" no campo Conta de luz
  E preencher "Band2" no campo Cód Promocional
  Quando eu clicar no botão "Avançar"
  Então seguir com o fluxo de cadastro e validar tela de "Proposta"

Caso de teste 03: Fluxo de cadastro | page_1 cadastro simples

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Qualidade" no campo nome
  E preencher "eder18.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "RJ" no campo uf
  E preencher "Barra Do Piraí" no campo cidade
  E preencher "849" no campo Conta de luz
  E preencher "Band3" no campo Cód Promocional
  Quando eu clicar no botão "Avançar"
  Então seguir com o fluxo de cadastro e validar tela de "Proposta"

Caso de teste 04: Fluxo de cadastro | page_1 cadastro simples

  Dado que estou na pagina home
  E clicar no botão Cadastre-se
  E preencher "Qualidade Qualidade" no campo nome
  E preencher "eder19.estevan@floraenergia.com.br" no campo e-mail
  E preencher "11111111111" no campo celular
  E preencher "MG" no campo uf
  E preencher "Água Boa" no campo cidade
  E preencher "1000" no campo Conta de luz
  E preencher "Band4" no campo Cód Promocional
  Quando eu clicar no botão "Avançar"
  Então seguir com o fluxo de cadastro e validar tela de "Proposta"
