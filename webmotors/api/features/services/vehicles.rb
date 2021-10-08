class Vehicles
    include HTTParty

    base_uri ENV["api_url"]

    def get_vehicle_no_params
        self.class.get("/vehicles", 
            headers: {'Content-Type': 'application/json'}
        )
    end

    def get_vehicle_by_page(page)
        self.class.get("/vehicles", 
            query: {'Page': page},
            headers: {'Content-Type': 'application/json'}
        )
    end
end

# Instância do Serviço
def vehicles
    Vehicles.new
end