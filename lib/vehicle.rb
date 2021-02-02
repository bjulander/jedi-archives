class Vehicle
    @@all = []
    
        attr_accessor :name, :model, :speed
        def initialize(hash)
            hash.each do |key, value|
                self.send("#{key}=", value)
            end
            
        end
    end