class People
@@all = []

    attr_accessor :name, :birth_year, :eye_color, :height, :homeworld
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