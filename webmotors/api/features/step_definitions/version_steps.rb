Quando('realizar requisição para o endpoint version passando o ModelID {int}') do |model_id|
    @response = version.get_version_by_model_id(model_id)
end
    
Então('retornar todos os versions que pertencem ao ModelID') do
    model_id_request = @response.request.last_uri.query.to_s
    model_id_request = (model_id_request.slice(8..model_id_request.length)).to_i

    @response.each do |version|
        expect(version['ModelID']).to eql model_id_request
    end
end
    
Quando('realizar requisição para o endpoint version sem informar o parâmetro ModelID') do
    @response = version.get_version_no_params
end