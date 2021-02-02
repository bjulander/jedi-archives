class Cli

    def welcome
        puts "Welcome Master Jedi." 
        puts "To begin your search, please select from the following:"
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
        input = gets.strip.downcase
        case input 
        when "people"
            self.people_search
        when "planets" || "planet"
            self.planets_search
        when "species"
            self.species_search
        when "starships"
            self.starships_search
        when "vehicles"
            self.vehicle_search
        else
           puts "Invalid option. Please choose again." 
        end
    end
end

    def people_search
        puts "Please enter a name to begin your search"
        input = " "
        while input != "exit!"
        input = gets.strip
        Api.get_info
        end
    end

    



end