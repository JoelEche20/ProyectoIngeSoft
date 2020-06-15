Feature:
Como jugador
Quiero registrar mi intento
Para verificar si mi intento es correcto

Scenario:
Given visito la pagina de ingresar intento
And ingreso el intento 4321 en el campo "intento"
When presiono el boton para ragistrar mi intento "Ingresar Intento"
Then deberia ir a la pagina de mostrar mensaje intento