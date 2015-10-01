# Write your code here!
require 'pry'
def game_hash
  game_hash = {
    :home => {
      :team_name => ["Brooklyn Nets"],
      :colors => ["Black", "White"], 
      :players => [
        {"Alan Anderson" => 
          {:player_name => "Alan Anderson",
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1, 
          :slam_dunks => 1
          }
          },
          {"Reggie Evans" =>
            {
            :player_name => "Reggie Evans",
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12, 
          :slam_dunks => 7
        }
          },
          {"Brook Lopez" => 
            {
            :player_name => "Brook Lopez",
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1, 
          :slam_dunks => 15
          },
        },
        {
        "Mason Plumlee" => 
        {
          :player_name => "Mason Plumlee",
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8, 
          :slam_dunks => 5
        }
        },
        {
          "Jason Terry" =>
          {
            :player_name => "Jason Terry",
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11, 
          :slam_dunks => 1
          }
        }
      ]
      },
    :away => {
      :team_name => ["Charlotte Hornets"],
      :colors => ["Turquoise", "Purple"], 
      :players => [
        {"Jeff Adrien" => 
          {:player_name => "Jeff Adrien",
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7, 
          :slam_dunks => 2
          }
          },
          {"Bismak Biyombo" =>
            {
            :player_name => "Bismak Biyombo",
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15, 
          :slam_dunks => 10
        }
          },
          {"DeSagna Diop" => 
            {
            :player_name => "DeSagna Diop",
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5, 
          :slam_dunks => 5
          },
        },
        {"Ben Gordon" => 
        {
          :player_name => "Ben Gordon",
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1, 
          :slam_dunks => 0
        }
        },
        {"Brendan Haywood" =>
          {
            :player_name => "Brendan Haywood",
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5, 
          :slam_dunks => 12
          }
        }
      ]
      }
  }
end

def find_player_team(name)
  game_hash.collect do |team, team_data|
    team if team_data[:players].map(&:keys).flatten.include?(name)
  end.compact.first
end

def find_player_stat(name, team, stat)
  game_hash[team][:players].collect do |player_stats|
    player_stats[name][stat] if player_stats.keys.first == name
  end.compact.first
end

def num_points_scored(name)
  player_team = find_player_team(name)
  find_player_stat(name, player_team, :points)
end

def shoe_size(name)
  player_team = find_player_team(name)
  find_player_stat(name, player_team, :shoe)
end






