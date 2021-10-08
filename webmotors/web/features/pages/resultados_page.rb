class ResultadosPage
    def initialize
        @url = "#{$url_web}carros/estoque"

        # MARCA
        @botao_todas_as_marcas = :xpath, "//*[text()='Ver todas as marcas']"
        @campo_marcas = :xpath, "//*[text()='Digite a marca desejada']"

        # MODELO
        @todos_os_modelos = :xpath, "//*[text()='Todos os modelos']"
        @campo_modelos = :xpath, "//*[text()='Digite o modelo desejado']"

        # VERSÃO
        @todas_as_versoes = :xpath, "//*[text()='Todas as versões']"
        @campo_versoes = :xpath, "//*[text()='Digite a versão desejada']"

        # EM COMUM
        @primeiro_registro_do_filtro = :css, "* a.Filters__line Filters__line__result"
        @carros_encontrados = :css, ".ContainerCardVehicle.ads_align > div > div > h2"
        @versoes_encontradas = :css, ".ContainerCardVehicle.ads_align > div > div > h3"
        @primeiro_veiculo_do_resultado = :css, ".ContainerCardVehicle.ads_align > div > div > div"
    end

    def acessar_pagina
        $driver.get @url
        sleep 3
    end

    def acessar_estoque(id_revendedor)
        $driver.get "#{@url}?revendedor=#{id_revendedor}"
        sleep 3
    end

    def filtrar_por_marca(marca)
        $driver.find_element(@botao_todas_as_marcas).click
        $driver.find_element(@campo_marcas).send_keys marca
        $driver.find_element(@primeiro_registro_do_filtro).click
    end

    def filtrar_por_modelo(modelo)
        $driver.find_element(@todos_os_modelos).click
        $driver.find_element(@campo_modelos).send_keys modelo
        $driver.find_element(@primeiro_registro_do_filtro).click
    end

    def filtrar_por_versao(versao)
        $driver.find_element(@todas_as_versoes).click
        $driver.find_element(@campo_versoes).send_keys versao
        $driver.find_element(@primeiro_registro_do_filtro).click
    end

    def listar_carros_encontrados
        elements = $driver.find_elements(@carros_encontrados)
        carros = nil

        if elements.length >= 1
            elements.each do |element|
                carros << element.text.upcase
            end
        else
            carros = []
        end

        return carros
    end

    def listar_versoes_encontradas
        elements = $driver.find_elements(@versoes_encontradas)
        versoes = nil

        if elements.length >= 1
            elements.each do |element|
                versoes << element.text.upcase
            end
        else
            carros = []
        end

        return versoes
    end

    def clicar_no_primeiro_veiculo
        $driver.find_element(@primeiro_veiculo_do_resultado).click
    end
end

# Instância da Page
def resultados_page
    ResultadosPage.new
end