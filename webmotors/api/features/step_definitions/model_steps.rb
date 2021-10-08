Quando('realizar requisição para o endpoint model passando o MakeID {int}') do |make_id|
    @response = model.get_model_by_make_id(make_id)
end
    
Então('retornar todos os models que pertencem ao MakeID') do
    make_id_request = @response.request.last_uri.query.to_s
    make_id_request = (make_id_request.slice(7..make_id_request.length)).to_i

    @response.each do |model|
        expect(model['MakeID']).to eql make_id_request
    end
end
    
Quando('realizar requisição para o endpoint model sem informar o parâmetro MakeID') do
    @response = model.get_model_no_params
end