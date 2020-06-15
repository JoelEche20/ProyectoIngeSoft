Feature:
Como jugador
Quiero elegir las configuraciones del juego
Para poder elegir como quiero jugar
Scenario:
Given visito la pagina de configuracion
And ingreso el campo "1 v 1","numeros","Facil" en los campós "quien", "modo", "dificultad" 
When presiono el btn "enviar"
Then deberia ir a la pagina de ingresarNombre