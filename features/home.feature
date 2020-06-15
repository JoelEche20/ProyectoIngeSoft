Feature:
    Como Jugador
    Quiero ver las reglas del juego
    Para poder jugar de forma de forma correcta

Scenario: mostrar reglas del juego
    Given visito la pagina home
    And deberia leer las  "REGLAS DEL JUEGO"
    When presiono el boton "jugar"
    Then deberia ir a la pagina de configuraciones