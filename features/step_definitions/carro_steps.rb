require 'calabash-android/calabash_steps'



Dado(/^que eu esteja no app$/) do

  page(Carro).clicar_cadastrar

end

Quando(/^eu fizer um cadastro$/) do
  @placa = Faker::Vehicle.vin[0,6]
  @modelo = Faker::Vehicle.manufacture	
  @valor =  Faker::Number.normal(50, 3.5)	

  page(Carro).preencher_modelo(@placa,@modelo,@valor)
  page(Carro).btn_Cadastrar
  page(Carro).voltar_home
  


end

Então(/^confirmo se cadastro foi efetuado$/) do
 page(Carro).consultar_carro
 # binding.pry
 page(Carro).consultar_carro_cadastrado(@placa)
# page(Carro).consultar_carro_cadastrado($placa)
# {expected.to => include("$placa") }



end



 # page(Carro).preencher_ano
  # page(Carro).preencher_placa
  # page(Carro).preencher_km
  # page(Carro).preencher_valor
  