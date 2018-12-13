Feature: Juego ahorcado

   Juego del ahorcado

  Scenario: El juego inicia con los guiones de la palabra
    Given visito la pagina principal
    When presiono el boton "inicio"
    Then deberia ver algun "_"

    Scenario: cargar juego
      Given ingresa juego
      Then deberia cargar el numero de "Oportunidades"
      And deberia cargar el boton "pista"
      And deberia cargar los "espacios" de letras
      And deberia cargar las "letras" usadas
      And deberia cargar las "letras" usadas

  Scenario: introducir letras
    Given ingresa juego
    When ingreso la letra 'm' en el campo 'nletra'
      And presiono el boton "Letra"
    Then deberia ver algun 'm'

  # Scenario: Cuando reinicio el juego, carga nueva palabra
  #   Given ingresa juego
  #     And 