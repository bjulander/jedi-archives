class Planet
    @@all = []
    
    attr_accessor :name, :diameter, :terrain, :climate
    def initialize(hash)
        hash.each do |key, value|
            self.send("#{key}=", value)
        end
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find(input)
        @@all.find do |planet|
            planet.name.downcase.include?(input.downcase)
        end
    end
end
