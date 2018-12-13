require 'sinatra'
require './lib/hangman.rb'


get '/' do
  @@juego = Hangman.new
  erb :inicio
end

post '/iniciar' do
  @@juego.cargar_palabra
  erb :inicio
end


get '/juego' do
  @@juego.cargar_palabra
  @@juego.introducir_letra(params[:nletra]) unless params[:nletra] == nil
  erb :juego
end
