require 'sinatra'
load 'lib/cowsAndBulls.rb'
$key

get '/'do 
    erb :configuracion_view
end

post '/' do
    
    erb :ingresar_nombre_view
end

get '/ingresarNombre' do
    erb :ingresar_nombre_view
end
get '/ingresarClave' do
    @nombre= params[:nombre].to_s
    erb :ingresar_clave_view
end
post '/ingresarClave'do

    $key= params[:clave]
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
