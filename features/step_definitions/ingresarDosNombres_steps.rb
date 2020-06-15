Given('visito la pagina ingresar nombres') do
    visit '/ingresarNombre'
end

Given('ingreso el primer nombre {string} en el campo {string}') do |string, string2|
    fill_in(string2, :with => string)
end
  
Given('ingreso el segundo nombre {string} en el campo {string}') do |string, string2|
    fill_in(string2, :with => string)
end

When('presiono el boton para poder {string}') do |var|
    click_button(var)
end
  
Then('deberia ir a la pagina de ingresar clave') do
    visit '/ingresarClave'
end