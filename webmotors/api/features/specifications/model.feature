# language: pt

@model
Funcionalidade: OnlineChallenge - Model

@success
Cenário: Consultar Models por MakeID
    Quando realizar requisição para o endpoint model passando o MakeID 2
    Então retornar status_code 200
    E retornar todos os models que pertencem ao MakeID

@error
Cenário: Retorno de erro ao tentar consultar Models sem passar o parâmetro MakeID
    Quando realizar requisição para o endpoint model sem informar o parâmetro MakeID
    Então retornar status_code 404