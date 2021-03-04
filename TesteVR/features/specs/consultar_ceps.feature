#language: pt

@consultar_cep
Funcionalidade: Consultar CEPs
    Dado que eu precise ter os dados do endereço
    Quando consultar o CEP 
    Então obtenho todos os dados necessários

@consultar_cep_valido
Esquema do Cenário: Consulta CEP valido
    Quando consultar o <cep> valido
    E valido o <status>
    Então capturo o código IBGE

    Exemplos:
    |      cep        |  status   |
    |  "cep_valido"   |"status_ok"|

@consultar_cep_invalido
Esquema do Cenário: Consulta CEP invalido
    Quando consultar o <cep> invalido
    E valido o <status>
    Então capturo o código IBGE
    
    Exemplos:
    |       cep      |  status    |
    | "cep_invalido" |"status_nok"|