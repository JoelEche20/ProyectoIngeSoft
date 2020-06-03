require 'sinatra'

get	'/' do
    erb :ingresar_clave_view
end

get	'/ingresarIntento' do
    erb :ingresar_intento_view
end