require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Basefall", ["Sleeve", "Onson", "Anatol", "Bobson"], "Jeromy", 0)
  end

  def test_get_team_name
    assert_equal("Basefall", @team.team_name)
  end

  def test_get_team_players
    assert_equal(["Sleeve", "Onson", "Anatol", "Bobson"], @team.team_players)
  end

  def test_get_team_coach
    assert_equal("Jeromy", @team.team_coach)
  end

  def test_update_coach_name
    @team.update_coach_name("Glenallen")
    assert_equal("Glenallen", @team.team_coach)
  end

  def test_new_player
    @team.new_player("Roy")
    assert_equal(["Sleeve", "Onson", "Anatol", "Bobson", "Roy"], @team.team_players)
  end

  def test_player_in_team__true
    assert_equal(true, @team.player_in_team("Sleeve"))
  end

  def test_player_in_team__false
    assert_equal(false, @team.player_in_team("Steve"))
  end

  def test_update_points__won
    assert_equal(1, @team.update_points("won"))
  end

  def test_update_points__lost
    assert_equal(0, @team.update_points("lost"))
  end

end
