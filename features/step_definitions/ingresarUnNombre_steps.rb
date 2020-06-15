Given('visito la pagina ingresar nombre') do
    visit  '/ingresarNombre'
end
  
Given('ingreso {string} en el campo {string}') do |string, string2|
    fill_in(string2, :with => string)
end

When('presiono el boton para {string}') do |var|
    click_button(var)
end

Then('deberia ir a la pagina de ingresar intento') do
    visit '/ingresarIntento'
end