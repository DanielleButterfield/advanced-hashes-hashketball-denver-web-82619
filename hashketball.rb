# Write your code here!

def game_hash
  gameHash = {
    :home => {
      :team_name => {},
      :colors => [],
      :players => [
        :number => {},
        :shoe => {},
        :points => {},
        :rebounds => {},
        :assists => {},
        :steals => {},
        :blocks => {},
        :slam_dunks => {}
      ]
    },
    :away => {
      :team_name => {},
      :colors => [],
      :players => [
        :number => {},
        :shoe => {},
        :points => {},
        :rebounds => {},
        :assists => {},
        :steals => {},
        :blocks => {},
        :slam_dunks => {}
      ]
    }
  }
  return gameHash
end

def num_points_scored
