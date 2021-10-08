Dado('acessar a página de resultado de busca da WebMotors') do
    resultados_page.acessar_pagina
end

Quando('pesquisar por {string} no filtro de Marcas') do |marca|
    resultados_page.filtrar_por_marca marca
end

Então('retornar nos resultados apenas veículos da marca {string}') do |marca|
    carros = resultados_page.listar_carros_encontrados
    expect(carros).to all(include(marca.upcase))
end


Quando('pesquisar por {string} no filtro de Modelos') do |modelo|
    resultados_page.filtrar_por_modelo modelo
end

Então('retornar nos resultados apenas os veículos do modelo {string}') do |modelo|
    carros = resultados_page.listar_carros_encontrados
    expect(carros).to all(include(modelo.upcase))
end


Quando('pesquisar por {string} no filtro de Versões') do |versao|
    resultados_page.filtrar_por_versao versao
end

Então('exibir apenas os veículos na versão {string}') do |versao|
    versoes = resultados_page.listar_versoes_encontradas
    expect(versoes).to all(include(versao.upcase))
end