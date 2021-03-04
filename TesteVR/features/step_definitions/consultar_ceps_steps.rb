Quando('consultar o {string} valido') do |cep|
    Consulta.new.cep_valido(cep)
end
  
Quando('valido o {string}') do |status|
    Consulta.new.valida_status(status)
end

Então('capturo o código IBGE') do
    Consulta.new.captura_dados
end

Quando('consultar o {string} invalido') do |cep|
    Consulta.new.cep_invalido(cep)
end