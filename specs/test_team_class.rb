require('minitest/autorun');
require('minitest/reporters');

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new;

require_relative('../team_class.rb');

class FunctionsTest < MiniTest::Test;



  def test_set_coach
    new_team=Team.new("The Guys",["Dave","Chris","Reggie","Matthew","Joe","Donald","Stuart"],"Niall",0)
    new_team.coach="Craig"
    assert_equal("Craig",new_team.coach)
  end


  def test_add_player
    new_team=Team.new("The Guys",["Dave","Chris","Reggie","Matthew","Joe","Donald","Stuart"],"Niall",0)
    new_team.add_player("Kieth")
    assert_equal(["Dave","Chris","Reggie","Matthew",
      "Joe","Donald","Stuart","Kieth"],new_team.players)
  end

  def test_check_player_true
    new_team=Team.new("The Guys",["Dave","Chris","Reggie","Matthew","Joe","Donald","Stuart"],"Niall",0)
    assert_equal(true,new_team.check_current_player("Dave"))
  end

  def test_check_player_false
    new_team=Team.new("The Guys",["Dave","Chris","Reggie","Matthew","Joe","Donald","Stuart"],"Niall",0)
    assert_equal(false,new_team.check_current_player("Kieth"))
  end

  def test_points_win
    new_team=Team.new("The Guys",["Dave","Chris","Reggie","Matthew","Joe","Donald","Stuart"],"Niall",0)
    new_team.team_won(true)
    assert_equal(1,new_team.points)
  end

end
