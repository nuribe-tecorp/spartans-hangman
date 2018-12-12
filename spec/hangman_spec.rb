require './lib/hangman.rb'

describe Hangman do
  it 'debe contener 6 oportinidades al iniciar' do
    juego = Hangman.new
    juego.oportunidades.should == 6
  end

  it 'letras usadas debe estar vacias al iniciar' do
    juego = Hangman.new
    juego.letras_usadas.should == ''
  end

  it 'Cargar palabra manzana' do
    juego = Hangman.new
    juego.cargar_palabra
    juego.mostrar_palabra.should=='manzana'
  end
end