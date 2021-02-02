class Planet
    @@all = []
    
        attr_accessor :name, :diameter, :terrain, :climate
        def initialize(hash)
            hash.each do |key, value|
                self.send("#{key}=", value)
            end
        end
    end