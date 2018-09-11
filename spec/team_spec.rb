require("minitest/autorun")
require("minitest/rg")
require_relative("../team")

class TestTeam < Minitest::Test

  def setup
    players = ["Bob", "Fred"]
    @team = Team.new("CodeClan", players, "raymond")

    @score = {
      win: 3,
      loss: 1
    }
  end

  def test_getName
    assert_equal("CodeClan", @team.teamName)
  end

  def test_getPlayers
    assert_equal(["Bob", "Fred"], @team.players)
  end

  def test_getcoach
    assert_equal("raymond", @team.coach)
  end

  def test_addPlayers
    @team.addPlayer("Dave")
    assert_equal(3, @team.players.length)
  end

  def test_findPlayer__found
    assert_equal(true, @team.findPlayer("Bob"))
  end

  def test_findPlayer__not_found
    assert_equal(false, @team.findPlayer("Wally"))
  end

  def test_addRemovePoints # 1 point per win/loss
    assert_equal(2, @team.addRemovePoints(@score))
  end

end
