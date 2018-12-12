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