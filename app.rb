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
  if(params[:nletra] != nil)
    @@juego.introducir_letra(params[:nletra])
  end


  #@@juego = Hangman.new
  #@@juego.cargar_palabra
  erb :juego
end
