class Team

  attr_reader :team_name, :team_players
  attr_accessor :team_coach, :points

  def initialize(team_name, team_players, team_coach, points)
    @team_name = team_name
    @team_players = team_players
    @team_coach = team_coach
    @points = points
  end

  def update_coach_name(name)
    @team_coach = name
  end

  def new_player(name)
    @team_players.push(name)
  end

  def player_in_team(name)
    for player in @team_players
      if player == name
        return true
      end
    end
    return false
  end

  def update_points(game_status)
    if game_status == "won"
      @points += 1
    end
    return @points
  end

end
