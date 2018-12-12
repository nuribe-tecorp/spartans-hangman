Given("visito la pagina principal") do
visit '/'
end

Then("deberia visualizar el boton {string}") do |boton|
  last_response.body.should =~ /inicio/m
end
