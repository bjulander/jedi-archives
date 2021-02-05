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
        puts "Exit"
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
        when "exit"
            abort("May the Force be with you Master Jedi.")
        else
           puts "INVALID ENTRY. Please enter one of the following:" 
        end
        end
    end

    def search(category)
        input = gets.strip
            case category
            when "people"
                object = People.find(input) || Api.get_info(input, category)
                if object
                    self.people_options(person)
                end
            when "planets"
                object = Planet.find(input) || Api.get_info(input, category)
                if object
                    self.planet_options(planet)
                end
            when "species"
                object = Species.find(input) || Api.get_info(input, category)
                if object
                    self.species_options(species)
                end
            when "starships"
                object = Starship.find(input) || Api.get_info(input, category)
                if object
                    self.starship_options(starship)
                end
            when "vehicles"
                object = Vehicle.find(input) || Api.get_info(input, category)
                if object
                    self.vehicle_options(vehicle)
                end
            else 
                "exit"
                abort("May the Force be with you Master Jedi.")
            end
             if !object 
                 puts " "
                    puts "This item is unknown. If an item does not appear in our records, it does not exist!"
                 puts " "
             end

    end

    def people_options(instance)
        puts "Please enter a number from the following options for #{instance.name}:"
        puts "1 - Full Name"
        puts "2 - Birth Year"
        puts "3 - Eye Color"
        puts "4 - Height"
        # puts "5 - Homeworld"
        puts "6 - Begin a new search"
        puts "7 - Exit the archives"
        self.people_selection(instance)
    end

    def people_selection(instance)
        input = " "
        input = gets.strip
        if input == "1"
            puts "#{instance.name}"
            puts " "
            self.people_options(instance)
        elsif input == "2"
            puts "#{instance.name} was born #{instance.birth_year} (Before the Battle of Yavin)"
            puts " "
            self.people_options(instance)
        elsif input == "3"
            puts "#{instance.name} has #{instance.eye_color} eyes."
            puts " "
            self.people_options(instance)
        elsif input == "4"
            puts "#{instance.name} is #{instance.height} centimeters tall."
            puts " "
            self.people_options(instance)
        # elsif input == "5" 
        #     self.people_options(instance)
        elsif input == "6"
            self.search_criteria
        elsif input == "7"
            abort("May the Force be with you Master Jedi.")
        else
            puts  "INVALID ENTRY. Please enter a valid option."
            self.people_options(instance)
        end
    end

    def planet_options(instance)
        puts "Please enter a number from the following options for #{instance.name}:"
        puts "1 - Planet Name"
        puts "2 - Diameter"
        puts "3 - Terrain"
        puts "4 - Climate"
        puts "5 - Begin a new search"
        puts "6 - Exit the archives"
        self.planet_selection(instance)
    end

    def planet_selection(instance)
        input = " "
        input = gets.strip
        if input == "1"
            puts "#{instance.name}"
            puts " "
            self.planet_options(instance)
        elsif input == "2"
            puts "#{instance.name} is #{instance.diameter} kilometers wide."
            puts " "
            self.planet_options(instance)
        elsif input == "3"
            puts "#{instance.name} has #{instance.terrain} terrain."
            puts " "
            self.planet_options(instance)
        elsif input == "4"
            puts "#{instance.name} is #{instance.climate}."
            puts " "
            self.planet_options(instance)
        elsif input == "5"
            self.search_criteria
        elsif input == "6"
            abort("May the Force be with you Master Jedi.")
        else
            puts  "INVALID ENTRY. Please enter a valid option."
            self.planet_options(instance)
        end
    end

    def species_options(instance)
        puts "Please enter a number from the following options for #{instance.name}:"
            puts "1 - Name"
            puts "2 - Classification"
            puts "3 - Average Height"
            puts "4 - Average Lifespan"
            puts "5 - Language"
            puts "6 - Begin a new search"
            puts "7 - Exit the archives"
            self.species_selection(instance)
    end

    def species_selection(instance)
        input = " "
        input = gets.strip
        if input == "1"
            puts "#{instance.name}"
            puts " "
            self.species_options(instance)
        elsif input == "2"
            puts "#{instance.name} are classified as #{instance.classification}"
            puts " "
            self.species_options(instance)
        elsif input == "3"
            puts "#{instance.name} are #{instance.average_height} centimeters tall."
            puts " "
            self.species_options(instance)
        elsif input == "4"
            puts "#{instance.name} live on average #{instance.average_lifespan} years."
            puts " "
            self.species_options(instance)
        elsif input == "5"
            puts "#{instance.name} speak #{instance.language}"
            puts " "
            self.species_options(instance)
        elsif input == "6"
            self.search_criteria
        elsif input == "7"
            abort("May the Force be with you Master Jedi.")
        else
            puts  "INVALID ENTRY. Please enter a valid option."
            self.species_options(instance)
        end
    end

    def vehicle_options(instance)
        puts "Please enter a number from the following options for #{instance.name}:"
            puts "1 - Name"
            puts "2 - Model"
            puts "3 - Top Speed"
            puts "4 - Begin a new search"
            puts "5 - Exit the archives"
            self.vehicle_selection(instance)
    end

    def vehicle_selection(instance)
        input = " "
        input = gets.strip
        if input == "1"
            puts "#{instance.name}"
            puts " "
            self.vehicle_options(instance)
        elsif input == "2"
            puts "#{instance.name} is a #{instance.model} model."
            puts " "
            self.vehicle_options(instance)
        elsif input == "3"
            puts "The #{instance.name} has a top speed of #{instance.speed} kilometers per hour."
            puts " "
            self.vehicle_options(instance)
        elsif input == "4"
            self.search_criteria
        elsif input == "5"
            abort("May the Force be with you Master Jedi.")
        else
            puts  "INVALID ENTRY. Please enter a valid option."
            self.vehicle_options(instance)
        end
    end

    def starship_options(instance)
        puts "Please enter a number from the following options for #{instance.name}:"
            puts "1 - Name"
            puts "2 - Manufacturer"
            puts "3 - Model"
            puts "4 - Crew Count"
            puts "5 - Passenger Capacity"
            puts "6 - Begin a new search"
            puts "7 - Exit the archives"
            self.starship_selection(instance)
    end

    def starship_selection(instance)
        input = " "
        input = gets.strip
        if input == "1"
            puts "#{instance.name}"
            puts " "
            self.starship_options(instance)
        elsif input == "2"
            puts "#{instance.name}s are made by #{instance.manufacturer}"
            puts " "
            self.starship_options(instance)
        elsif input == "3"
            puts "#{instance.name} is a #{instance.model} model."
            puts " "
            self.starship_options(instance)
        elsif input == "4"
            puts "The #{instance.name} needs #{instance.crew} personnel to operate."
            puts " "
            self.starship_options(instance)
        elsif input == "5"
            puts "The #{instance.name} can carry a maximum of #{instance.passengers} passengers."
            puts " "
            self.starship_options(instance)
        elsif input == "6"
            self.search_criteria
        elsif input == "7"
            abort("May the Force be with you Master Jedi.")
        else
            puts  "INVALID ENTRY. Please enter a valid option."
            self.starship_options(instance)
        end
    end
end