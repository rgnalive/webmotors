Quando('realizar requisição para o endpoint makes') do
    @response = make.get_all_makes
end
  
Então('retornar status_code {int}') do |status_code|
    expect(@response.code).to eql status_code
end
  
Então('retornar todos os makes no response, incluindo {string}') do |make|
    expect(@response.length).to be >= 0
    expect(@response).to include(have_key "ID")
    expect(@response).to include(have_key "Name")
    expect(@response[1]['Name']).to eql make
end