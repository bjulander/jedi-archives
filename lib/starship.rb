class Starship
    @@all = []
    
    attr_accessor :name, :manufacturer, :model, :crew, :passengers
    def initialize(hash)
        hash.each do |key, value|
            self.send("#{key}=", value)
        end
        @@all << self
    end

    def self.all
        @@all
    end
end