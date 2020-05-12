class Team
  attr_accessor :players, :coach
  attr_reader :name, :points
  def initialize(team_name,players,coach,points)
    @name=team_name
    @players=players
    @coach=coach
    @points=0
  end

  # def set_coach_name(name)
  #   @name=name
  # end
  #
  # def get_team_name():
  #   return @name
  # end
  #
  # def get_coach():
  #   return @coach
  # end
  #
  # def get_players():
  #   return @players
  # end
  def add_player(player)
    @players.push(player)
  end

  def check_current_player(player)
    return @players.include?(player)
  end

  def team_won(win_bool)
    if win_bool
      @points+=1
    else
      @points-=1
    end
  end

end


# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach’s name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player’s name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.
