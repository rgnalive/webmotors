# language: pt

@make
Funcionalidade: OnlineChallenge - Make

@success
Cenário: Consultar Makes
    Quando realizar requisição para o endpoint makes
    Então retornar status_code 200
    E retornar todos os makes no response, incluindo "Honda"