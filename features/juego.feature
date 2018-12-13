Feature: Juego ahorcado

   Juego del ahorcado

    Scenario: cargar juego
      Given visito la pagina principal
        And ingresa juego
      Then deberia cargar el numero de "Oportunidades"
      And deberia cargar el boton "pista"
      And deberia cargar los "espacios" de letras
      And deberia cargar las "letras" usadas
      And deberia cargar las "letras" usadas

  Scenario: introducir letras
    Given visito la pagina principal 
      And ingresa juego
    When ingreso la letra 'm' en el campo 'nletra'
      And presiono el boton "Letra"
    Then deberia ver algun 'm'