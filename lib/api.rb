class Api 
    # url = "https://swapi.dev/api/people/?search=lukeskywalker"
    # url = "https://swapi.dev/api/people/?search=#{name}"

    def self.get_info(name, category)
        url = "https://swapi.dev/api/#{category}/?search=#{name}"
        response = HTTParty.get(url)
        binding.pry
        # Details.new
    end




end 