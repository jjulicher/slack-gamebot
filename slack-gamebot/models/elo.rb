module Elo
  DELTA_TAU = 0.94
  DIVISOR = ENV['ELO_DIVISOR'] if ENV.key?('ELO_DIVISOR')
  POWER = ENV['ELO_POWER'] if ENV.key?('ELO_POWER')
  POINTS = ENV['ELO_POINTS'] if ENV.key?('ELO_POINTS')
  
  def self.team_elo(players)
    (players.sum(&:elo).to_f / players.count).round(2)
  end
end
