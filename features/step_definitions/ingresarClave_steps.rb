Given('visito la pagina ingresar clave') do
    visit '/ingresarClave'
end
  
Given('ingreso la clave {int} {string}') do |int, string|
    fill_in(string, :with => int)
end
  
When('presiono el btn para {string}') do |var|
    click_button(var)
end
  
Then('ir a la pagina de ingresar intento') do
    visit '/ingresarIntento'
end