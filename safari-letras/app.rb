require 'sinatra'

get '/' do
"SAFARI LETRAS"
end

get '/safari' do
  @@letra = params["letra"]
  erb:juego

end