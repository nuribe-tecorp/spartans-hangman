Feature: Inicio

Juego de Ahorcado

Scenario: el Juego se inicia con la pantalla inicial
  Given visito la pagina principal
  Then deberia visualizar el boton "inicio"

Scenario: Existe el boton para iniciar juego con palabra oculta
  Given visito la pagina principal
  Then deberia visualizar el boton con texto "Iniciar Juego Con Palabra Oculta"
