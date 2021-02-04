class Vehicle
    @@all = []
    
    attr_accessor :name, :model, :speed
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
        @@all.find do |vehicle|
            vehicle.name.downcase.include?(input.downcase)
        end
    end
end