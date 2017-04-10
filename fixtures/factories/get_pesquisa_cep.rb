class GetPesquisaCepApi
    include HTTParty

    module TEMPLATE
     	 PESQUISA_CEP = YAML.load_file('./fixtures/templates/pesquisa_cep_payload.yml')
    end 	

	def self.json_pesquisa_cep
    pesquisa_cep = TEMPLATE::PESQUISA_CEP.dup
    pesquisa_cep['cep'] = "0"+Faker::Number.number(1)+"000000"
    return pesquisa_cep
	end
end