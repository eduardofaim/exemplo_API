class CriarUsuarioAPI
    include HTTParty
    base_uri ENVIRONMENT['quintoandar'] 

    format :json
    headers 'Content-Type' => 'application/x-www-form-urlencoded'

    def initialize
      @dados_header = {
      	"sendSms":'true',
		"nome":Faker::Name.first_name,
		"email":Faker::Internet.email,
		"telefonePrincipal":'11954542323',
		"senha":'12345678',
		"passwordCheck":'12345678'
	}

    end

# API de CRIAR USER
#=============================================================================================
    def post_criar_usuario
        self.class.post("/usuario/novo", :body => @dados_header)
        	#json_criar_usuario.to_json) 
    end
#=============================================================================================
end