class Version
    include HTTParty

    base_uri ENV["api_url"]

    def get_version_no_params
        self.class.get("/version", 
            headers: {'Content-Type': 'application/json'}
        )
    end

    def get_version_by_model_id(model_id)
        self.class.get("/version", 
            query: {'ModelID': model_id},
            headers: {'Content-Type': 'application/json'}
        )
    end
end

# Instância do Serviço
def version
    Version.new
end