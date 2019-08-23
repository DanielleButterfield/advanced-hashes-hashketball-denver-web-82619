# Write your code here!

def game_hash
  gameHash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        :alan_stats => {
          :name => "Alan Anderson",
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        :reggie_stats => {
          :name => "Reggie Evans",
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        :brook_stats => {
          :name => "Brook Lopez",
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        :mason_stats => {
          :name => "Mason Plumlee",
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 11,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        :jason_stats => {
          :name => "Jason Terry",
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        },
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        :jeff_stats => {
          :name => "Jeff Adrien",
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        :bismack_stats => {
          :name => "Bismack Biyombo",
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 22,
          :blocks => 15,
          :slam_dunks => 10
        },
        :desagna_stats => {
          :name => "DeSagna Diop",
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        :ben_stats => {
          :name => "Ben Gordon",
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        :kemba_stats => {
          :name => "Kemba Walker",
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 7,
          :blocks => 5,
          :slam_dunks => 12
        },
      }
    }
  }
  return gameHash
end

def num_points_scored(player)
  name_index = []
  stat_arr = []
  gameHash = game_hash
  gameHash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |play_stat, stats|
          stats.each do |stat_att, stat|
            if stat_att == :name
              name_index.push(stat)
            elsif stat_att == :points
              stat_arr.push(stat)
            end
          end
        end
      end
    end
  end
  point_index = name_index.index(player)
  p stat_arr[point_index]
end

def shoe_size(player)
  name_index = []
  stat_arr = []
  gameHash = game_hash
  gameHash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |play_stat, stats|
          stats.each do |stat_att, stat|
            if stat_att == :name
              name_index.push(stat)
            elsif stat_att == :shoe
              stat_arr.push(stat)
            end
          end
        end
      end
    end
  end
  point_index = name_index.index(player)
  p stat_arr[point_index]
end

def team_colors(team)
  name_index = []
  color_arr = []
  gameHash = game_hash
  gameHash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :team_name
        name_index.push(data)
      elsif attribute == :colors
        color_arr.push(data)
      end
    end
  end
  point_index = name_index.index(team)
  p color_arr[point_index]
end

def team_names
  name_arr = []
  gameHash = game_hash
  gameHash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :team_name
        name_arr.push(data)
      end
    end
  end
  p name_arr
end

def player_numbers(team)
  stat_arr = []
  gameHash = game_hash
  gameHash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :team_name
        if data == team
          team_data.each do |att, dat|
            if att == :players
              dat.each do |play_stat, stats|
                stats.each do |stat_att, stat|
                  if stat_att == :number
                    stat_arr.push(stat)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  p stat_arr
end

def player_stats(player)
  stat_arr = []
  gameHash = game_hash
  gameHash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |play_stat, stats|
          stats.each do |stat_att, stat|
            if stat_att == :name
              if stat == player
                stats.each do |stat_att, stat|
                  stat_arr.push(stat)
                end
              end
            end
          end
        end
      end
    end
  end
  p stat_arr[1..8]
end
