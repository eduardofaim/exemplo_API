class PostCriarUsuarioAPI
	include HTTParty

	module TEMPLATE
		CRIAR_USUARIO = YAML.load_file('./fixtures/templates/criar_usuario_payload.yml')
	end

	def self.json_criar_usuario
    criar_usuario = TEMPLATE::CRIAR_USUARIO.dup
    criar_usuario['sendSms'] = true 
    criar_usuario['nome'] = Faker::Name.first_name
    criar_usuario['email'] = Faker::Internet.email
    criar_usuario['telefonePrincipal'] = 1132459987
	criar_usuario['senha'] = 'Mudar1@3'
	criar_usuario['passwordCheck'] = 'Mudar1@3'
    return criar_usuario
	end
end