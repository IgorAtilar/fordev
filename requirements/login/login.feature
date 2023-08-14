Feature: Login
Como um cliente
Quero poder acessar minha conta e me manter logado
Para que eu possa ver e responder enquetes de forma rápida

Cenário: Credenciais Válidas
Dado que o cliente informou suas credenciais válidas
Quando solicitar para fazer login
Então o sistema deve enviar o usuário para a tela de pesquisas
E manter o usuário logado

Cenário: Credenciais Inválidas
Dado que o cliente informou suas credenciais inválidas
Quando solicitar para fazer login
Então o sistema deve exibir uma mensagem de erro

