Dado(/^que faça um POST com os dados validos$/) do
  @criar_usuario = CriarUsuarioAPI.new.post_criar_usuario
  puts @criar_usuario
  # @gerar_json = PostCriarUsuarioAPI.json_criar_usuario
  # puts @gerar_json
  # @criar_usuario = CriarUsuarioAPI.new.post_criar_usuario(@gerar_json)
  # puts @criar_usuario
end

Então(/^API retorna "([^"]*)"$/) do |status|
  expect(@criar_usuario.code.to_s).to eq status
end