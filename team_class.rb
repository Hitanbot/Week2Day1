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
