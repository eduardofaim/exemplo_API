Dado(/^que eu efetuei que informe o CEP$/) do	
  @gerar_cep = GetPesquisaCepApi.json_pesquisa_cep
  cep = @gerar_cep["cep"]
  @pesquisa_cep = PesquisaCepAPI.new.get_search_cep
  puts @pesquisa_cep
  end

Então(/^API retorna o endereço$/) do 
  expect(@pesquisa_cep.code).to eq 200
end

