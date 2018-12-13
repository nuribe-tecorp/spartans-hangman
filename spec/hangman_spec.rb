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

  #it 'debe mostrar guiones' do
  #  juego = Hangman.new
  #  juego.cargar_palabra
  #  longitud = juego.mostrar_palabra.length
  #  juego.mostrar_guiones.count('_ ').should == longitud * 2
  #end

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


  it 'debe disminuir la oportunidad en 1 si la letra falla' do
    juego = Hangman.new
    juego.cargar_palabra

    oportunidad=juego.oportunidades
    juego.introducir_letra(";")
    juego.oportunidades.should ==oportunidad-1
  end

  it 'debe disminuir la oportunidad en 1 si la letra falla' do
    juego = Hangman.new
    juego.cargar_palabra

    oportunidad=juego.oportunidades
    juego.introducir_letra(";")
    juego.oportunidades.should ==oportunidad-1
  end

  it 'debe desplegar mensaje de letra correcta cuando la letra intoducida es correcta' do
    juego = Hangman.new
    juego.cargar_palabra

    letra = juego.mostrar_palabra[0]
    juego.introducir_letra(letra)
    juego.mensaje.should =="Letra Correcta"
  end
  it 'debe desplegar mensaje de letra Incorrecta cuando la letra intoducida es Incorrecta' do
    juego = Hangman.new
    juego.cargar_palabra

    letra = juego.mostrar_palabra[0]
    juego.introducir_letra(";")
    juego.mensaje.should =="Letra Incorrecta"
  end

 it 'debe desplegar mensaje de Gaste cuando no queden quiones' do
    juego = Hangman.new
   juego.cargar_palabra

    caracteres=-1
    while caracteres<juego.mostrar_palabra.length do
      caracteres+=1
      juego.introducir_letra(juego.mostrar_palabra[caracteres,1])

    end

    juego.mensaje.should =="Ganaste"
  end
  it 'debe desplegar mensaje de Persidte cuando se acaben las oportunidades' do
     juego = Hangman.new
    juego.cargar_palabra

     caracteres=-1
     while caracteres<juego.mostrar_palabra.length do

       juego.introducir_letra(";")
      caracteres+=1
     end

     juego.mensaje.should =="Perdiste"
   end

  it 'debe cargar distintas palabras' do
    juego = Hangman.new
    juego.cargar_palabra
    primera = juego.mostrar_palabra
    juego.cargar_palabra
    segunda = juego.mostrar_palabra
    (primera != segunda).should == true
  end

end
