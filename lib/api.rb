class Api 


    def self.get_info(name, category)
        url = "https://swapi.dev/api/#{category}/?search=#{name.split(" ")[0]}"
        # binding.pry
        response = HTTParty.get(url)
        if response["results"].empty?
                 return false
              end
        if url.include?("people")
            people_hash = {name: response["results"][0]["name"], birth_year: response["results"][0]["birth_year"], height: response["results"][0]["height"], homeworld: response["results"][0]["homeworld"], eye_color: response["results"][0]["eye_color"]}
            People.new(people_hash)
        elsif url.include?("planets")
            planets_hash = {name: response["results"][0]["name"], terrain: response["results"][0]["terrain"], climate: response["results"][0]["climate"], diameter: response["results"][0]["diameter"]}
            Planet.new(planets_hash)
        elsif url.include?("species")
            species_hash = {name: response["results"][0]["name"], classification: response["results"][0]["classification"], average_height: response["results"][0]["average_height"], average_lifespan: response["results"][0]["average_lifespan"], language: response["results"][0]["language"]}
            Species.new(species_hash)
        elsif url.include?("starships")
            starship_hash = {name: response["results"][0]["name"], model: response["results"][0]["model"], manufacturer: response["results"][0]["manufacturer"], crew: response["results"][0]["crew"], passengers: response["results"][0]["passengers"]}
            Starship.new(starship_hash)
        else url.include?("vehicles")
            vehicle_hash = {name: response["results"][0]["name"], model: response["results"][0]["model"], speed: response["results"][0]["max_atmosphering_speed"], }
            Vehicle.new(vehicle_hash)
        end
    end
end 

#error response -  response => {"count"=>0, "next"=>nil, "previous"=>nil, "results"=>[]}
#normal response - response => {"count"=>1, "next"=>nil, "previous"=>nil, "results"=>[{