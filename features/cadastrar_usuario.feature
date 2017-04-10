#language: pt
#encode: UTF-8

Funcionalidade: Cadastrar usuario
	Eu como usuario
	Desejo cadastrar um novo login

	Cenario:  Cadastrar usuario
		Dado que faça um POST com os dados validos 
		Então API retorna "200"
	