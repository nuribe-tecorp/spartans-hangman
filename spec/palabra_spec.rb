require './lib/palabra.rb'

describe Palabra do
  it 'contener una pista' do
    palabra = Palabra.new
    palabra.pista.length.should > 0
  end

  it 'debe contener una palabra' do
    palabra = Palabra.new
    palabra.palabra.length.should > 0
  end
end