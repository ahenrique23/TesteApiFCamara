class Consulta
    include HTTParty
    base_uri "https://viacep.com.br"

    def cep_valido(cep)
        @consultar = self.class.get("/ws/#{CEP[cep]}/json/")
        p @consultar
    end

    def valida_status(status)
        expect(@consultar.response.code).to eql ST[status]
    end

    def captura_dados
        @ibge = @result.parsed_response["ibge"]
        p "Código IBGE do endereço: #{@ibge}"
    end

    def cep_invalido(cep)
        @consultar = cep_api.consulta_cep(cep)
    end
end
