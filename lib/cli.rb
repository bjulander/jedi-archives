class Cli

    def welcome
        puts "Welcome Master Jedi." 
        puts "To begin your search, please enter one of the following:"
        search_criteria
    end

    def search_criteria
        input = " "
        while input != "exit!"
        puts "People"
        puts "Planet"
        puts "Species"
        puts "Starship"
        puts "Vehicle"
        input = gets.strip
        case input 
        when "people"
            puts "Please enter a name to begin your search"
            self.search(input)
        when "planet"
            puts "Please enter a planet to begin your search"
            self.search(input)
        when "species"
            puts "Please enter a species to begin your search"
            self.search(input)
        when "starship"
            puts "Please enter a starship to begin your search"
            self.search(input)
        when "vehicle"
            puts "Please enter a vehicle to begin your search"
            self.search(input)
        else
           puts "INVALID ENTRY. Please enter one of the following:" 
        end
    end
end

    def search(category)
        puts "Please enter a name to begin your search"
        input = gets.strip
        Api.get_info(input, category)
    end