Quando('realizar requisição para o endpoint vehicles passando o Page {int}') do |page|
    @response = vehicles.get_vehicle_by_page(page)
end
    
Então('retornar todos os vehicles com ids {int} a {int}') do |first_id, last_id|
    for i in 0..9
        expect(@response[i]["ID"]).to eql first_id + i
    end
end
    
Quando('realizar requisição para o endpoint vehicles sem informar o parâmetro Page') do
    @response = vehicles.get_vehicle_no_params
end