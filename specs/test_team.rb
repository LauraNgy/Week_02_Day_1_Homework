require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < MiniTest::Test

  def test_get_team_name
    team = Team.new("Basefall", ["Sleeve", "Onson", "Anatol", "Bobson"], "Jeromy")
    assert_equal("Basefall", team.team_name)
  end

  def test_get_team_players
    team = Team.new("Basefall", ["Sleeve", "Onson", "Anatol", "Bobson"], "Jeromy")
    assert_equal(["Sleeve", "Onson", "Anatol", "Bobson"], team.team_players)
  end

  def test_get_team_coach
    team = Team.new("Basefall", ["Sleeve", "Onson", "Anatol", "Bobson"], "Jeromy")
    assert_equal("Jeromy", team.team_coach)
  end

  def test_update_coach_name
    team = Team.new("Basefall", ["Sleeve", "Onson", "Anatol", "Bobson"], "Jeromy")
    change_coach_name("Glenallen")
    assert_equal("Glenallen", team.team_coach)
  end
  

end
