class Team

attr_accessor :team_name, :players, :couch, :points

  def initialize(team_name, players, couch, points)
    @team_name = team_name
    @players = players
    @couch = couch
    @points = points
  end

  def get_team_name
    return @team_name
  end

  def get_players
    return @players
  end

  def get_couch
    return @couch
  end

  def set_couch(new_name)
    return new_name
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def check_player(name)
    if @players.include?(name)
     return true
    end
    else false
  end

  def add_points(new_point)
    @points += new_point
  end

  def won_or_lost(position)
    #print Team won? true or false
    #position = gets.chomp
    if true
      return 'won'
    else
      return 'lost'
    end
  end
end
