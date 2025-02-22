require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do 
  it "exists and has attributes" do 
    team = Team.new("Dodgers", "Los Angeles")
    expect(team).to be_a(Team)
  end

  it "starts with no players" do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team.roster).to eq([])
    expect(team.player_count).to eq(0)
  end

  it "can add players" do 
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    team.add_player(player_1)
    team.add_player(player_2)
    expect(team.roster).to eq([player_1, player_2])
    expect(team.player_count).to eq(2)
  end

  it "it can have long term players" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.long_term_players).to eq([player_1, player_3])
  end

  it "it can have short term players" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.long_term_players).to eq([player_2, player_4])
  end
end

# pry(main)> team.total_value
# #=> 85200000

# pry(main)> team.details
# #=> {"total_value" => 85200000, "player_count" => 4}
