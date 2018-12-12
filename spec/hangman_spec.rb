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

  it 'cargar una palabra' do
    juego = Hangman.new
    juego.cargar_palabra
    juego.mostrar_palabra.length > 0
  end

  it 'debe mostrar guiones' do
    juego = Hangman.new
    juego.cargar_palabra
    longitud = juego.mostrar_palabra.length
    juego.mostrar_guiones.count('_').should == longitud
  end
end