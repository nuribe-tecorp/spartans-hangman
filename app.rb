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
