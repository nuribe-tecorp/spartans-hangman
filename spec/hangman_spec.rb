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

  it 'debe mostrar la misma cantidad de guiones' do
    juego = Hangman.new
    juego.cargar_palabra
    longitud = juego.mostrar_palabra.length
    juego.mostrar_guiones.count('_').should == longitud
  end

  it 'debe almacenar letras introducidas' do
    juego = Hangman.new
    juego.cargar_palabra
    juego.introducir_letra 'l'
    juego.letras_usadas.include?('l').should == true
  end

  it 'debe rellenar letra correcta en guiones' do
    juego = Hangman.new
    juego.cargar_palabra
    letra = juego.mostrar_palabra[0]
    juego.introducir_letra(letra)
    juego.mostrar_guiones.include?(letra).should == true
  end  
end