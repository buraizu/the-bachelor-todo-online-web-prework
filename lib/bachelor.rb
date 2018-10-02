require 'pry'
def get_first_name_of_season_winner(data, season)
  full_name =
  data.each do |number, info|
    if number == season
      if info[0]["status"] == "Winner"
        full_name = info[0]["name"]
        first_name = full_name.split
        return first_name[0]
      end
    end
  end
end
  
def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season, contestant|
    contestant.each do |element|
      element.each do |key, value|
        if value == hometown
        hometown_counter += 1
        end
      end
    end
  end
  hometown_counter
end

# def get_occupation(data, hometown)
#   data.each do |season, contestant|
#     contestant.each do |element|
#       element.each do |key, value|
#         if value == hometown
#           element.each do |key2, value2|
#             if key2 == :occupation
#             return value2
#             end
#           end
#         end
#       end
#     end
#   end
# end

