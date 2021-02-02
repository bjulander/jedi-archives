class Api 
    # url = "https://swapi.dev/api/people/?search=lukeskywalker"
    # url = "https://swapi.dev/api/people/?search=#{name}"

    def self.get_info(name, category)
        # binding.pry
        url = "https://swapi.dev/api/#{category}/?search=#{name.split(" ")[0]}"
        response = HTTParty.get(url)
        

         people_hash = {name: response["results"][0]["name"], birth_year: response["results"][0]["birth_year"], height: response["results"][0]["height"], mass: response["results"][0]["mass"], homeworld: response["results"][0]["homeworld"]}
         Detail.new(people_hash)
    end




end 