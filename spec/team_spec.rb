require 'rspec'
require './lib/player'
require './lib/team'

RSpec.describe Team do

it "exisits" do
  team = Team.new 

  expect(team).to be_a Team
  expect(team.name).to eq("Dodgers")
end

end