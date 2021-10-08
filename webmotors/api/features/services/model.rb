class Model
    include HTTParty

    base_uri ENV["api_url"]

    def get_model_no_params
        self.class.get("/model", 
            headers: {'Content-Type': 'application/json'}
        )
    end

    def get_model_by_make_id(make_id)
        self.class.get("/model", 
            query: {'MakeId': make_id},
            headers: {'Content-Type': 'application/json'}
        )
    end
end

# Instância do Serviço
def model
    Model.new
end