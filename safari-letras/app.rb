require 'sinatra'

get '/' do
"SAFARI LETRAS"
end

get '/safari' do
  @@letra = params["letra"]
  if @@letra == nil
  	@@mensaje = ""
  elsif @@letra == ''
    @@mensaje = "Favor de ingresar letra"
  else 
    @@mensaje = "Ingresaste la letra " + @@letra
  end

  erb:juego

end