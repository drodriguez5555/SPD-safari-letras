Feature: Introducirletra

Como usuario
Deseo ingresar letra
Para que  adivinar la palabra

Scenario: Igresa la letra
Given Dado que estas en el juego
When  Ingresar letra "a" 
And Enviar letra
Then Mostrar letra "Ingresaste la letra a"

Scenario: Ingresar vacio  
Given Dado que estas en el juego
When  Ingresar letra ""
And Enviar vacio 
Then Mostrar Mesanje "Favor de ingresar letra"

Scenario: Ingresar letra repetida  
Given Dado que estas en el juego y ya allas ingresado "a"
When  Ingresar letra repetida "a"
And Enviar letra 
Then Mostrar Mesanje "Ingresaste la letra a"




