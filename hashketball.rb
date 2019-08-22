require "pry"

def game_hash 
  # game_hash = {}
  #   game_hash[Bball_data] 
  #     [:home][
  #       {:team_name => "", 
  #       :colors=>"", 
  #       :players=>
  #       [{`:number`=> value},{`:shoe`=>value},{`:points`=> value}{`:rebounds`=>value}{`:assists`=>value}{':steals => value}{`:blocks`=>value}{`:slam_dunks`=>value}]
  #     [:away][
  #       {:team_name => "", 
  #       :colors=>"",
  #       :players=>
  #       [{`:number`=> value},{`:shoe`=.value},{`:points`=> value}{`:rebounds`=>value}{`:assists`=>value`}{:steals`=>value}{`:blocks`=>value}{`:slam_dunks`=>value}]
hashket_ball = {
    :home => {
      :team_name => 'Brooklyn Nets',
      :colors => ['Black', 'White'],
      :players => [
        {:player_name => 'Alan Anderson',
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
        },
        {:player_name => 'Reggie Evans',
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12, 
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
        },
        {:player_name => 'Brook Lopez',
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15 
        },
        {:player_name => 'Mason Plumlee',
        :number => 1,
        :shoe => 19,
        :points => 26, 
        :rebounds => 11,
        :assists => 6, 
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5 
        },
        {:player_name => 'Jason Terry',
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2, 
        :assists => 2, 
        :steals => 4, 
        :blocks => 11, 
        :slam_dunks => 1}
      ]
    },
    :away => { 
      :team_name => 'Charlotte Hornets',
      :colors => ['Turquoise', 'Purple'],
      :players => [
        {:player_name => 'Jeff Adrien',
        :number => 4, 
        :shoe => 18, 
        :points => 10, 
        :rebounds => 1, 
        :assists => 1, 
        :steals => 2, 
        :blocks => 7, 
        :slam_dunks => 2
        },
        {:player_name => 'Bismack Biyombo',
        :number => 0,
        :shoe => 16, 
        :points => 12, 
        :rebounds => 4,  
        :assists => 7,  
        :steals => 22, 
        :blocks => 15, 
        :slam_dunks => 10 
        },
        {:player_name => 'DeSagna Diop',
        :number => 2,  
        :shoe => 14, 
        :points => 24, 
        :rebounds => 12,  
        :assists => 12,  
        :steals => 4, 
        :blocks => 5, 
        :slam_dunks => 5
        },
        {:player_name => 'Ben Gordon',
        :number => 8,  
        :shoe => 15, 
        :points => 33, 
        :rebounds => 3,  
        :assists => 2, 
        :steals => 1, 
        :blocks => 1, 
        :slam_dunks => 0
        },
        {:player_name => 'Kemba Walker',
        :number => 33, 
        :shoe => 15, 
        :points => 6, 
        :rebounds => 12,  
        :assists => 12,  
        :steals => 7, 
        :blocks => 5, 
        :slam_dunks => 12}
      ]
    }
  }
end  
  
  
  
  
    
# hash={}
#   data.each do |key,value|
#     value.each do |new_val,name|
#       name.each do |name|
#       if !hash[name]
#         hash[name]={}
#       end
#       if !hash[name][key]
#         hash[name][key]=[]

require "pry"

def good_practices
  game_hash.each do |location, team_data|
    #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
    binding.pry
    team_data.each do |attribute, data|
      #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
      binding.pry

      #what is 'data' at each loop throughout .each block? when will the following line of code work and when will it break?
      data.each do |data_item|
          binding.pry
      end
    end
  end
end

def num_points_scored(players_name)
  game_hash.each do |location, team_data| 
     players = team_data[:players]
      players.each do |details|
        return details[:points] if details[:player_name] == players_name
    end
  end
end

# binding.pry   
    
# def num_points_scored(players_name)
#   game_hash.each do |location, team_data|
#     players = team_data[:players]
#       players.each do |details|
#       return details[:points] if details[:player_name] == players_name
#     end 
#   end
# end    
    
def shoe_size(player_name)
  game_hash.each do |location, team_data| 
    players = team_data[:players]
      players.each do |details|
        return details[:shoe] if details[:player_name] == player_name
    end
  end
end

        
  # binding.pry
  
  def team_colors(team_name)
  game_hash.each do |location, team_data| 
    colors = team_data[:colors]
        return colors if team_data[:team_name] == team_name
    end
  end
 
def team_names
  teams = []
  game_hash.each do |location, team_data|
    teams << team_data[:team_name]
  end
  teams
end
 
# def team_names
#   teams = []
#   game_hash.each do |location, team_data|
#     teams << team_data[:team_name]
#   end
#   teams 
# end

# def player_numbers(team_name)
#   jersey_numbers = []
#   game_hash.each do |location, team_data|
#     players = team_data[:players]
#     players.each do |details|
#       jersey_numbers << details[:number] if team_name[team_name] == team_name
#     end
#   end
#   jersey_numbers
# end

def player_numbers(team_name)
  jersey_numbers = []
  game_hash.each do |location, team_data|
    players = team_data[:players]
      players.each do |details|
      jersey_numbers << details[:number] if team_name[team_name] == team_name
    end 
  end
  jersey_numbers
end

#   def shoe_size(player_name)
#   game_hash.each do |location, team_data| 
#     players = team_data[:players]
#       players.each do |details|
#         return details[:shoe] if details[:player_name] == player_name
#     end
#   end
# end

player_stats(player_name)
player_stats ={}
game_hash.each do |location, team_data|
  players= team_data[:players]
  players.each do |details|
    return details[:number][:shoe][:points][:rebounds][:assists][:steals][:blocks][:slam_dunks] if details[player_name] == player_name
  end
end
end

  
