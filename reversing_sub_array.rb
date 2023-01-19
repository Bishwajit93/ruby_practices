# frozen_string_literal: true

def reverse_sub_array(arr, sub_arr)
  new_arr = []
  count = 0
  starting_point = sub_arr[0]
  ending_point = sub_arr[1]
  for i in starting_point..ending_point
    new_arr.push(arr[i])
  end
  new_arr.reverse!
  for i in starting_point..ending_point
    arr[i] = new_arr[count]
    count +=1
  end
  return arr
end

arr = [1,2,3,4,5,6,7,8,9]
#puts "From which point u want to start? please put in between 0 to #{arr.length-1}"
#starting_point = gets.chomp.to_i
#starting_point = 1
#puts "At which point u want to end? please put in between 0 to #{arr.length-1} and bigger than starting point."
#ending_point = gets.chomp.to_i
#ending_point = 1
prov_arr = [1,3]
print "Given array : #{arr}"
print reverse_sub_array(arr, prov_arr)
