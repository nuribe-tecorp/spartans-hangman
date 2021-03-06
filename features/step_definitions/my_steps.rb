Given("visito la pagina principal") do
  visit '/'
end

Then("deberia visualizar el boton {string}") do |boton|
  last_response.should have_xpath("//input[@name=\"#{boton}\"]")
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

Then("deberia cargar el boton {string}") do |boton|
  last_response.should have_xpath("//input[@name=\"#{boton}\"]")
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

Then("deberia visualizar el boton con texto {string}") do |texto|
  last_response.should have_xpath("//input[@value=\"#{texto}\"]")
end

When("ingreso el texto {string} en el campo {string}") do |valor, campo|
  fill_in(campo, :with => valor)
end
