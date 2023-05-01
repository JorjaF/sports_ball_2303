require 'rspec'
require './lib/player'

RSpec.describe Player do

  it "exists and has attributes" do
    player = Player.new("Michael Palledorous" , 1000000, 36)
    expect(player).to be_a(Player)
  end 

  it "has a first and last name" do 
    player = Player.new("Michael Palledorous" , 1000000, 36)
    expect(player.first_name).to eq ("Michael")
    expect(player.last_name).to eq("Palledorous")
  end

  it "has a montly cost" do 
    player = Player.new("Michael Palledorous" , 1000000, 36)
    expect(player.monthly_cost).to eq(1000000)
  end

  it "has a contact length" do
    player = Player.new("Michael Palledorous" , 1000000, 36)
    expect(player.contract_length).to eq(36)
  end

  it "has a total cost" do 
    player = Player.new("Michael Palledorous" , 1000000, 36)  
    expect(player.total_cost).to eq(36000000)
  end

  it "can have a nickname" do
    player = Player.new("Michael Palledorous" , 1000000, 36)
    expect(player.set_nickname!("Squints")).to eq("Squints")
  end
end
