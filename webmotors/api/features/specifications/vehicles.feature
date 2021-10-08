# language: pt

@vehicles
Funcionalidade: OnlineChallenge - Vehicles

@success
Cenário: Consultar Vehicles passando o Page igual a 1
    Quando realizar requisição para o endpoint vehicles passando o Page 1
    Então retornar status_code 200
    E retornar todos os vehicles com ids 1 a 10

@success
Cenário: Consultar Vehicles passando o Page igual a 2
    Quando realizar requisição para o endpoint vehicles passando o Page 2
    Então retornar status_code 200
    E retornar todos os vehicles com ids 11 a 20
    
@error
Cenário: Retorno de erro ao tentar consultar Vehicles sem passar o parâmetro Page
    Quando realizar requisição para o endpoint vehicles sem informar o parâmetro Page
    Então retornar status_code 404