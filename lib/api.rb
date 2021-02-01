class Api 

    def self.get_info
        url = "https://swapi.dev/api/planets/?search=kamino"
        # url = "https://www.swapi.tech/api/planets/1/?format=wookiee"
        response = HTTParty.get(url)
        binding.pry
    end




end