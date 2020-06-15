Given('visito la pagina home') do
    visit '/'
end
Given('deberia leer las  {string}') do |text|
    last_response.body.should =~ /#{text}/m
end  
When('presiono el boton {string}') do |var|
    click_button(var)
end
Then('deberia ir a la pagina de configuraciones') do
    visit '/configuracion'
end