class Make
    include HTTParty

    base_uri ENV["api_url"]

    def get_all_makes
        self.class.get("/make", 
            headers: {'Content-Type': 'application/json'}
        )
    end
end

# Instância do Serviço
def make
    Make.new
end