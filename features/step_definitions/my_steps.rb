Given("visito la pagina principal") do
  visit '/'
end

Then("deberia visualizar el boton {string}") do |boton|
  last_response.body.should =~ /inicio/m
end

Then("deberia ver algun {string}") do |string|
  last_response.body.should contain(string)
end

When("presiono el boton {string}") do |boton|
  click_button(boton)
end


Given("ingresa juego") do
visit '/juego'
end


Then("deberia cargar el numero de {string}") do |string|
  last_response.body.should contain(string)
end

Then("deberia cargar el boton {string}") do |string|
  last_response.body.should contain(string)
end

Then("deberia cargar los {string} de letras") do |string|
  last_response.body.should contain(string)
end

Then("deberia cargar las {string} usadas") do |string|
  last_response.body.should contain(string)
end


Given("Carga el juego con nueva letra") do
  visit '/juego'
end

When("ingreso la letra {string} en el campo {string}") do |valor, campo|
  fill_in(campo, :with => valor)
end
