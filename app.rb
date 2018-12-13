require 'sinatra'
require './lib/hangman.rb'


get '/' do
  @mostrar_pista = false
  @@juego = Hangman.new
  @@juego.cargar_palabra
  erb :inicio
end

post '/iniciar' do
  @@juego.cargar_palabra
  erb :inicio
end


get '/juego' do

  unless(params[:palabra])== nil
      @@juego.cargar_palabra2(params[:palabra],params[:pista])
  end


  @@nombre_jugador = params['nombre']

  @@juego.introducir_letra(params[:nletra]) unless params[:nletra] == nil
  erb :juego
end

post '/reiniciar' do
  @@juego.cargar_palabra
  erb :juego
end

post '/pista' do
  @mostrar_pista = true
  @@juego.oportunidades -= 1

  erb :juego
end

get '/nuevapalabra' do
  erb :nuevapalabra

end

post '/nuevojuego' do
  @mostrar_pista = false
  @@juego = Hangman.new
  @@juego.cargar_palabra
  erb :juego
end
