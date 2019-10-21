class SportsTeam

  attr_reader :team_name, :players, :coach, :points
  attr_writer :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end
  #
  # def set_coach(coach)
  #   @coach = coach
  # end

  def add_new_player(new_player)
    players.push(new_player)
  end

  def check_player(player_name)
    for player in players
      if player == player_name
        return true
      end
    end
  end

  def points_update(outcome)

    if outcome == "win"
      @points += 1
    elsif outcome == "lose"
      @points
    end

  end

end
