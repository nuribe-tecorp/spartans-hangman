require './lib/palabra.rb'

class Hangman
  attr_accessor :oportunidades
  attr_accessor :mensaje
  def initialize
    @oportunidades = 6
    @palabra = Palabra.new
    @letras_usadas = ''
    @mensaje = ""
  end

  def letras_usadas
    @letras_usadas
  end

  def cargar_palabra
    @guiones = ''
    @palabra.palabra = 'manzana'
    @palabra.palabra.length.times do
      @guiones << '_'
    end
  end

  def mostrar_palabra
    @palabra.palabra
  end

  def mostrar_guiones
    caracteres=-1
      guiones=""
    while caracteres<@palabra.palabra.length do
        caracteres+=1
        letra=@palabra.palabra[caracteres,1]
        if(@letras_usadas[letra])
          guiones << letra+" "
        else
          guiones << "_ "
        end

    end
    guiones
    #'_ _ _ _ _ _ _ '
  end

  def introducir_letra(letra)
    if(! @palabra.palabra[letra])
      @oportunidades-=1
      @mensaje="Letra incorrecta"
    else
      @mensaje="Letra correcta"
    end
    if(!@palabra.palabra["_"])
        @mensaje="Ganaste"
    end
    if(@oportunidades==0)
        @mensaje="Perdiste"
    end

    @letras_usadas << letra
    @palabra.palabra.length.times do |i|
      @guiones[i] = letra if @palabra.palabra[i] == letra
    end
  end
end
