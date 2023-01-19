# frozen_string_literal: true

def find_min_path(string, to_reach)
  starting_point = string.find_index(to_reach[0])
  reaching_point = string.find_index(to_reach[1])
  right_distance = reaching_point - starting_point
  left_distance = starting_point + (string.length - reaching_point)
  "To reach from #{to_reach[0]} to #{to_reach[1]}, you have to take #{right_distance} steps to right /n
  or #{left_distance} to left."
end

string_list = %w[axe knife plate dish cuttleries pan glass]
from_to = %w[plate pan]
find_path = find_min_path(string_list, from_to)
puts find_path
