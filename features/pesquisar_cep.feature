#language: pt
#encode: UTF-8

Funcionalidade: Pesquisa de CEP
	Eu como novo usuario
	Desejo saber qual o endereço do cep informado

	Cenario:  Pesquisar o cep da rua
		Dado que eu efetuei que informe o CEP 
		Então API retorna o endereço
	