require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < MiniTest::Test

  def setup
    @players = ['Rogers', 'Roman', 'Ron']
    @team = Team.new('Rangers', @players, 'Ronaldo', 0)
  end

  def test_team_name
    assert_equal('Rangers', @team.team_name())
  end

  def test_players
    assert_equal(['Rogers', 'Roman', 'Ron'], @team.players())
  end

  def test_couch
    assert_equal('Ronaldo', @team.couch())
  end

  def test_set_couch
    @team.couch = 'Ricaldo'
    assert_equal('Ricaldo', @team.couch())
  end

  def test_set_add_player
   @team.add_player('Rod')
   assert_equal(4, @players.length)
  end

  def test_check_player
    @team.check_player('Ron')
    assert_equal(true, @players.include?('Ron'))
  end

  def test_add_points
    @team.add_points(3)
    assert_equal(3, @team.points())
  end

  def test_won_or_lost
    @team.won_or_lost('won')
    @team.add_points(3)
    assert_equal('won', @team.won_or_lost('won'))
    assert_equal(3, @team.points())
  end
end
