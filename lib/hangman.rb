require 'palabra.rb'

class Hangman
  attr_accessor :oportunidades
  def initialize
    @oportunidades = 6
    @palabra = Palabra.new
    @letras_usadas = ''
  end

  def letras_usadas
    @letras_usadas
  end

  def cargar_palabra    
    @palabra.palabra = 'manzana'
  end

  def mostrar_palabra
    @palabra.palabra
  end

  def mostrar_guiones
    '_ _ _ _ _ _ _ '
  end

  def introducir_letra(letra)
    @letras_usadas << letra
  end
end