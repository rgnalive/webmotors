# language: pt

@buscar
Funcionalidade: Site WebMotors - Buscar veículos

Contexto:
    Dado acessar a página de resultado de busca da WebMotors

@success
Cenário: Realizar busca por Marca
    Quando pesquisar por "Honda" no filtro de Marcas
    Então retornar nos resultados apenas veículos da marca "Honda"

@success
Cenário: Realizar busca por Modelo
    Quando pesquisar por "Honda" no filtro de Marcas
    E pesquisar por "City" no filtro de Modelos
    Então retornar nos resultados apenas os veículos do modelo "City"

@success
Cenário: Realizar busca por Modelo e filtrar por Versão
    Quando pesquisar por "Honda" no filtro de Marcas
    E pesquisar por "City" no filtro de Modelos
    E pesquisar por "1.5 DX 16V FLEX 4P AUTOMÁTICO" no filtro de Versões
    Então exibir apenas os veículos na versão "1.5 DX 16V FLEX 4P AUTOMÁTICO"