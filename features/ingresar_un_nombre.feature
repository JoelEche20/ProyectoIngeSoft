Feature:
    Como Jugador
    Quiero ingresar mi nombre
    Para guardar mis datos
Scenario:
    Given visito la pagina ingresar nombre
    And ingreso "juan" en el campo "nombrep"
    When presiono el boton para "Ingresar Nombre"
    Then deberia ir a la pagina de ingresar intento