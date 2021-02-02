class People
@@all = []

    attr_accessor :name, :birth_year, :eye_color, :height, :homeworld, :films
    def initialize(hash)
        hash.each do |key, value|
            self.send("#{key}=", value)
        end
        binding.pry
    end
end