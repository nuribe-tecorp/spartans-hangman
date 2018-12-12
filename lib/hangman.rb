class Hangman
  attr_accessor :oportunidades
  def initialize
    @oportunidades = 6
    @palabra = Palabra.new
  end

  def letras_usadas
    return ''
  end

  def cargar_palabra    
    @palabra.palabra = 'manzana'
  end

  def mostrar_palabra
    @palabra.palabra
  end

  def mostrar_guiones
    '_______'
  end
end