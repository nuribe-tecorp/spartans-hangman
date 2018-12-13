Feature: Juego ahorcado

   Juego del ahorcado

    Scenario: cargar juego
      Given visito la pagina principal
        And ingresa juego
      Then deberia cargar el numero de "Oportunidades"
      And deberia cargar el boton "pista"
      And deberia cargar los "Ingresar letra:" de letras
      And deberia cargar las "Letras Usadas:" usadas


  Scenario: introducir letras
    Given visito la pagina principal
      And ingresa juego
    When ingreso la letra 'm' en el campo 'nletra'
      And presiono el boton "Letra"
    Then deberia ver algun 'm'

  Scenario: Quiero visualizar pista
    Given visito la pagina principal
      And ingresa juego
    When presiono el boton "pista"
    Then deberia ver algun 'Pista:'
