require "pry"

def get_first_name_of_season_winner(data, season)
  first_name = nil
    data[season].each do |contestant_hash|

        if contestant_hash.values.include?("Winner")
        first_name = contestant_hash["name"].split(" ")[0]

        end
    end
    first_name
end

def get_contestant_name(data, occupation)
  name = nil
  data.each do |season_hash, data_hash|
    data_hash.each do |contestant_data|
    if occupation == contestant_data["occupation"]
        name = contestant_data["name"]

    end
  end
end
name
end

def count_contestants_by_hometown(data, hometown)

   counter = 0
   data.each do |season_hash, data_srch|
     data_srch.each do |hometown_srch|
      if hometown_srch["hometown"] == hometown
          counter += 1

   end
  end
 end
 counter
end

def get_occupation(data, hometown)
  occupation = nil
  ary = []
      data.each do |hometown_srch, data_srch|
        data_srch.each do |occupation_srch|

          if occupation_srch["hometown"] == hometown
            occupation = occupation_srch["occupation"]

        end
    end
end
occupation
end


def get_average_age_for_season(data, season)
  # code here
end
