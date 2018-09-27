# ** GUMBALL MACHINE **
# keep track of number of gumballs
# inform user of result
# check if gumballs are available
# prompt for user input
# process user input
# provide gumballs
# accept gumball refills

# MODEL
#keep track of number of gumballs
#accept gumball refills

# VIEW
#inform user of result
#prompt of user input
#provide gumballs

# CONTROLLER
#check if gumballs are available
#process user input

class Gumball
end

class GumballMachineModel

    def initialize(gumballCount: 0)
        @gumballCount = gumballCount
    end
  
    def dispense
        if  @gumballCount > 0
            @gumballCount -= 1
            return Gumball.new
        else
            return nil
        end
    end

    def refill(count)
        @gumballCount += count
    end

end

class GumballMachineView

    def greeting
        puts "Welcome to the Super Gumball Machine!"
    end

    def menu
        choice = nil
        while choice != "G" && choice != "R" && choice != "X"
            puts "Press G to get a gumball, R to refill, or X to exit"
            choice = gets.chomp.upcase
        end
        choice
    end
    # Pressing G
    def getGumball
        puts "Yum, here's your gumball"
    end

    def machineEmpty
        puts "I'm sorry. We don't have gumballs now. Please come back later."
    end
    # Pressing R
    def refill(count)
        puts "Sweet! #{count} gumballs left."
    end
    # Pressing X
    def exit
        puts "Thanks and see you soon!"
    end

end

class GumballMachineController

    def initialize
        @gumballMachineModel = GumballMachineModel.new
        @gumballMachineView = GumballMachineView.new
    end

    def run
        @gumballMachineView.greeting
        choice = @gumballMachineView.menu 
    
        while choice != "X"
            if choice == "G"
                gumball = @gumballMachineModel.dispense
                if gumball.nil?
                    @gumballMachineView.machineEmpty
                else
                    @gumballMachineView.getGumball
                end
            end
            if choice == "R"
                numGumballs = @gumballMachineModel.refill(6)
                @gumballMachineView.refill(numGumballs)
            end
            choice = @gumballMachineView.menu
        end
        @gumballMachineView.exit
    end
end

gumballMachineController = GumballMachineController.new
gumballMachineController.run