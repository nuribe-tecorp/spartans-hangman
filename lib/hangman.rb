require 'palabra.rb'

class Hangman
  attr_accessor :oportunidades
  def initialize
    @oportunidades = 6
    @palabra = Palabra.new
    @letras_usadas = ''
    @guiones = ''
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
    @guiones
  end

  def introducir_letra(letra)
    @letras_usadas << letra
    @palabra.palabra.length.times do |i|
      @guiones[i] = letra if @palabra.palabra[i] == letra
    end
  end
end