require 'sinatra'
require './lib/hangman.rb'


get '/' do
  @@juego = Hangman.new
  @@juego.cargar_palabra
  erb :inicio
end

post '/iniciar' do
  @@juego.cargar_palabra
  erb :inicio
end


get '/juego' do
  @@juego.introducir_letra(params[:nletra]) unless params[:nletra] == nil
  erb :juego
end

post '/reiniciar' do
  @@juego.cargar_palabra
  erb :juego
end