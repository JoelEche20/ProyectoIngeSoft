require 'sinatra'
load 'lib/cowsAndBulls.rb'
$key
$nombre
$nombrep
$quien
$modo
$dificultad
$esMayor=true
$cont=9

get '/'do 
    erb :Home
end

get '/configuracion'do
    erb :configuracion_view
end

get '/ingresarNombre' do
    $quien=@params[:quien].to_s
    $modo=@params[:modo].to_s
    $dificultad=@params[:dificultad].to_s
    if @params[:intentos].to_s!=''
        $cont=@params[:intentos].to_i-1
    end
    if($quien.to_s=="1 v CPU")
        erb :ingresar_nombre_P2_view
    else
        erb :ingresar_nombre_view
    end
end
get '/ingresarClave' do
    $nombre= params[:nombre].to_s
    $nombrep= params[:nombrep].to_s
    erb :ingresar_clave_view
end
post '/ingresarClave'do

    $key= params[:clave]
    erb :ingresar_intento_view
end

get '/ingresarIntento' do
    $nombrep= params[:nombrep].to_s
    erb :ingresar_intento_view
end

post '/respuestaIntento' do
    if $cont == 0 
        $cont=9
        $esMayor=true
        erb :perdiste_view
    else
        cowbull=CowsAndBulls.new
        if $quien.to_s=="1 v CPU" && $esMayor
            $esMayor=false
            if $modo=="colores"
                $key=cowbull.colorsRandom($dificultad)
            else
                $key=cowbull.randomNumber($dificultad)
            end 
        end
        cowbull.configuration($key.to_s,$modo,$dificultad)
        @intento=cowbull.playCowsAndBulls(params[:intento].to_s)
        if(@intento == true)
            $cont=9
            $esMayor=true
            erb :mostrar_mensaje_view
        else
            $cont=$cont-1
            erb :mostrar_mensaje_intento_view
        end   
    end
end
get '/ingresarNombre2'do
    $nombre= params[:nombre].to_s
    erb :ingresar_nombre_P2_view

end
