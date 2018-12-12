Feature: Juego ahorcado

   Juego del ahorcado

  Scenario: El juego inicia con los guiones de la palabra
    Given visito la pagina principal
    When presiono el boton "inicio"
    Then deberia ver algun "_"