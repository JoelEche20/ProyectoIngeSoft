Given('visito la pagina de configuracion') do
visit '/configuracion'
end

Given('ingreso el campo {string},{string},{string} en los campós {string}, {string}, {string}') do |var, var1, var2, string, string1, string2|
    fill_in(string,:with=>var)
    fill_in(string1,:with=>var1)
    fill_in(string2,:with=>var2)
  end

When('presiono el btn {string}') do |string|
    click_button(string)
  end
Then('deberia ir a la pagina de ingresarNombre') do
    visit '/ingresarNombre'
end