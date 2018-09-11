class Team

  attr_writer :teamName, :players, :coach
  attr_reader :teamName, :players, :coach

  def initialize(teamName, players, coach)
    @teamName = teamName
    @players = players
    @coach = coach
    @points = 0
  end

  def addPlayer(newPlayer)
    players.push(newPlayer)
  end

  def findPlayer(findItem)
    found = false
    for item in players
      if (item == findItem)
        return true
      end
    end
    return found
  end

  def addRemovePoints(score)
    @points += score[:win]
    @points -= score[:loss]
    return @points
  end



end
