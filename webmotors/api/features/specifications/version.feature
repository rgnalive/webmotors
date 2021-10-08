# language: pt

@version
Funcionalidade: OnlineChallenge - Version

@success
Cenário: Consultar Version por ModelID
    Quando realizar requisição para o endpoint version passando o ModelID 4
    Então retornar status_code 200
    E retornar todos os versions que pertencem ao ModelID

@error
Cenário: Retorno de erro ao tentar consultar Versions sem passar o parâmetro ModelID
    Quando realizar requisição para o endpoint version sem informar o parâmetro ModelID
    Então retornar status_code 404