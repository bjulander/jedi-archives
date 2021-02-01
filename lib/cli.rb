class Cli

    def welcome
        puts "Thank you for using the NBA Databank! What are you looking for today?"
        #Welcome master jedi. What are you looking for today? 
        search_criteria
    end

    def search_criteria
        puts "Please enter search criteria"
        # input = gets.strip
        Api.get_info
    end

    



end