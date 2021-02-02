class Api 
    @@url = "https://swapi.dev/api/#{category}/?search=#{name}"

    def self.get_info
        # url = "https://swapi.dev/api/#{category}/?search=#{name}"
        response = HTTParty.get(@@url)
        binding.pry
    end




end