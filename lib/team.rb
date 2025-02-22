class Team
  attr_reader :name,
              :city,
              :roster

  def initialize (name, city)
    @name = name
    @city = city
    @roster = []
  end

  def player_count
    @roster.count
  end

  def add_player(player)
    @roster << player
  end
  
  def long_term_players
    @roster.select do |player|
      player.contract_length >= 25
    end
   end
  
  def short_term_players
    @roster.select do |player|
      player.contract_length <= 24
    end
  end


end
