class Species
    @@all = []
    
    attr_accessor :name, :classification, :average_height, :average_lifespan, :language
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
        @@all.find do |species|
            species.name.downcase.include?(input.downcase)
        end
    end
end