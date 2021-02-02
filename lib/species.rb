class Species
    @@all = []
    
        attr_accessor :name, :classification, :average_height, :average_lifespan, :language
        def initialize(hash)
            hash.each do |key, value|
                self.send("#{key}=", value)
            end
        end
    end