# language: pt

@listar_estoque
Funcionalidade: Site WebMotors - Listar estoque de vendedor

@success
Cenário: Listar estoque de um vendedor a partir dos detalhes de um veículo
    Dado pesquisar por "Honda" no filtro de Marcas
    E pesquisar por "City" no filtro de Modelos
    Quando abrir os detalhes do primeiro veículo nos resultados de pesquisa
    E clicar para ver todos os carros do vendedor
    Então retornar para a tela de resultados de pesquisa somente com os carros do vendedor