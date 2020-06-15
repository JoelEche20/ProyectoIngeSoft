Feature:
Como jugador
Quiero poder ingresar una clave secreta para que puedan adivinarla
Scenario:
Given visito la pagina ingresar clave
And ingreso la clave 1234 "clave"
When presiono el btn para "Ingresar Clave"
Then ir a la pagina de ingresar intento