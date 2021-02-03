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
        puts "Planets"
        puts "Species"
        puts "Starships"
        puts "Vehicles"
        input = gets.strip
        case input 
        when "people"
            puts "Please enter a name to begin your search"
            self.search(input)
        when "planets"
            puts "Please enter a planet to begin your search"
            self.search(input)
        when "species"
            puts "Please enter a species to begin your search"
            self.search(input)
        when "starships"
            puts "Please enter a starship to begin your search"
            self.search(input)
        when "vehicles"
            puts "Please enter a vehicle to begin your search"
            self.search(input)
        else
           puts "INVALID ENTRY. Please enter one of the following:" 
        end
    end
end

    def search(category)
        input = gets.strip
        new_instance = Api.get_info(input, category)
        self.category_attributes(new_instance)
    end

    def category_attributes(instance)
        puts "Please select from the following options:"

    end

end