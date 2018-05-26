require "pry"
def begins_with_r(array)
#should return true if every element of the array starts with an r and false otherwise
  i = 0
    array.each do |element|
      if element.to_s.start_with?("r") == true
        i +=1
      end
    end
  if i == array.length
    true
  else
    false
  end
end



def contain_a(array)
#should return all elements that contain the letter a
elements_contain_a = []

  array.each do |element|
    if element.to_s.include? "a"
      elements_contain_a.push(element)
    end
  end
elements_contain_a
end


def first_wa(array)
#return teh first element that begins with the letters 'wa'
  array.each do |element|
    if element.to_s.start_with?("wa") == true
      return element
    end
  end
end


def remove_non_strings(array)
#remove anything that's not a string from an array
  array.delete_if{|element| element != element.to_s}
end


def count_elements(some_thing_array)
# this gives the something and the number of times it occurs for all things not just one.
  some_thing_array.each do |s_a_element|
    s_a_element[:count] = 0
    name = s_a_element[:name]
    some_thing_array.each do |hash|
      if hash[:name] == name
        s_a_element[:count] += 1
      end
    end
  end.uniq
end




def merge_data(x,y)
#combines two nested data structures into one
#expects an array with all of the elements associated with the first name

  merge_data_array = []
  index = 0
    x.each do |x_element|
      x_element.each do |x_key, x_value|
        y.each do |y_hash|
          y_hash.each do |y_key, y_value|
            if y_key == x_value
                merge_data_array[index]= { x_key => x_value}
                y_value.each do |y_value_key, y_value_value|
                  merge_data_array[index][y_value_key]= y_value_value
                end
            end
          end
        end
      end
      index +=1
    end
  merge_data_array
end


def find_cool(stuff)
# finds all hashes that contain cool and returns them

cool_hashes_array = []
  stuff.each do |hash|

    hash.each do |key, value|
      if value.include?("cool") && value.length == 4
        cool_hashes_array.push(hash)
      end
    end
  end
cool_hashes_array
end


def organize_schools(hash)
hash_by_location = {}
location_list = []
hash.each do |name, location_hash|
  location_hash.each do |location_key, location_value|
    if location_list.include?(location_value) == false
      hash_by_location[location_value] = [name]
      location_list.push(location_value)
    elsif location_list.include?(location_value)
    hash_by_location[location_value].push(name)
    end
  end
end
hash_by_location
end
