Given('visito la pagina de ingresar intento') do
    visit  '/ingresarIntento'
end
  
Given('ingreso el intento {int} en el campo {string}') do |num, campo|
    fill_in(campo, :with => num)
end
  
When('presiono el boton para ragistrar mi intento {string}') do |string|
    click_button(string)
end
  
Then('deberia ir a la pagina de mostrar mensaje intento') do
    visit  '/respuestaIntento'
end