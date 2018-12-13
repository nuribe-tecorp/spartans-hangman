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


  Scenario: introducir letras
    Given Carga el juego con nueva letra
    When presiono el boton "Letra"
    #Then 'oportunidades' deberia disminuir en 1 si no es correcta
