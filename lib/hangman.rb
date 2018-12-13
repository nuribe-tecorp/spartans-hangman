require './lib/palabra.rb'

class Hangman
  attr_accessor :oportunidades
  attr_accessor :mensaje
  def initialize
    @oportunidades = 6
    @letras_usadas = ''
    @mensaje = ""
    @palabras = []
    @palabras << Palabra.new('manzana', 'fruta')
    @palabras << Palabra.new('libro', 'literatura')
    @palabras << Palabra.new('computadora', 'equipo electronico')
  end

  def letras_usadas
    @letras_usadas
  end

  def cargar_palabra
    @guiones = ''
    @palabra = @palabras.pop
    @palabra.palabra.length.times do
      @guiones << '_'
    end
  end

  def mostrar_pista
    @palabra.pista
  end

  def mostrar_palabra
    @palabra.palabra
  end

  def mostrar_guiones
    caracteres = -1
    guiones = ""
    return guiones if @palabra == nil
    while caracteres < @palabra.palabra.length do
        caracteres += 1
        letra = @palabra.palabra[caracteres, 1]
        if (@letras_usadas.include?(letra))
          guiones << letra + " "
        else
          guiones << "_ "
        end
    end
    guiones
  end

  def introducir_letra(letra)
    if (@palabra.palabra.include?(letra))
      @mensaje = "Letra Correcta"
      @mensaje = "Ganaste" unless mostrar_guiones.include?("_")
    else
      @oportunidades -= 1
      @mensaje = "Letra Incorrecta"
      @mensaje = "Perdiste" if @oportunidades <= 0
    end
    @letras_usadas << letra
  end
end
