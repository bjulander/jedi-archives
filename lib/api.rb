class Api 

    def self.get_info(name, category)
        # binding.pry
        url = "https://swapi.dev/api/#{category}/?search=#{name.split(" ")[0]}"
        response = HTTParty.get(url)

binding.pry
        #  people_hash = {name: response["results"][0]["name"], birth_year: response["results"][0]["birth_year"], height: response["results"][0]["height"], homeworld: response["results"][0]["homeworld"]}
        #  planets_hash = {name: response["results"][0]["name"], terrain: response["results"][0]["terrain"], climate: response["results"][0]["climate"], diameter: response["results"][0]["diameter"]}
        #  species_hash = {name: response["results"][0]["name"], classification: response["results"][0]["classification"], average_height: response["results"][0]["average_height"], average_lifespan: response["results"][0]["average_lifespan"], language: response["results"][0]["language"]}
        #  starship_hash = {name: response["results"][0]["name"], model: response["results"][0]["model"], manufacturer: response["results"][0]["manufacturer"], crew: response["results"][0]["crew"], passengers: response["results"][0]["passengers"]}
        #  vehicle_hash = {name: response["results"][0]["name"], model: response["results"][0]["model"], speed: response["results"][0]["max_atmosphering_speed"], }
        
        
        #  People.new(people_hash)


    end





end 