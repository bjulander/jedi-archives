class Starship
    @@all = []
    
        attr_accessor :name, :manufacturer, :model, :crew, :passengers
        def initialize(hash)
            hash.each do |key, value|
                self.send("#{key}=", value)
            end
            binding.pry
        end
    end