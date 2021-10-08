class ComprarPage
    def initialize
        @url = "#{$url_web}comprar"
        @ver_estoque_vendedor = :id, "VehicleSellerInformationStock"
    end

    def clicar_em_estoque_vendedor
        $driver.find_element(@ver_estoque_vendedor).click
    end
end

# Instância da Page
def comprar_page
    ComprarPage.new
end