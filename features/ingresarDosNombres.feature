Feature:
    Como Jugadores
    Quiero ingresar los nombres
    Para guardar los datos
Scenario:
    Given visito la pagina ingresar nombres
    And ingreso el primer nombre "victor" en el campo "nombre"
    And ingreso el segundo nombre "juan" en el campo "nombrep"
    When presiono el boton para poder "Ingresar Nombre"
    Then deberia ir a la pagina de ingresar clave