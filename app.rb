require 'sinatra'
load 'lib/cowsAndBulls.rb'

$key

get	'/' do
    erb :Home
end
get	'/' do
    erb :ingresar_clave_view
end
post '/ingresarClave'do
    $key= params[:clave].to_i
    erb :ingresar_intento_view
end

get '/ingresarIntento' do
    erb :ingresar_intento_view
end

post '/respuestaIntento' do
    cowbull=CowsAndBulls.new
    @intento=cowbull.playCowsAndBulls(params[:intento].to_i,$key)
     
    if(@intento == true)
        erb :mostrar_mensaje_view
    else
        erb :mostrar_mensaje_intento_view
    end   
end
