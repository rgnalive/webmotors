Quando('abrir os detalhes do primeiro veículo nos resultados de pesquisa') do
    resultados_page.clicar_no_primeiro_veiculo
end
  
Quando('clicar para ver todos os carros do vendedor') do
    comprar_page.clicar_em_estoque_vendedor
end
  
Então('retornar para a tela de resultados de pesquisa somente com os carros do vendedor') do
    expect($driver.current_url).to include("idrevendedor")
    expect($driver.current_url).to include("ver-estoque-vendedor")
end