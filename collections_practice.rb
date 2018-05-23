require 'pry'

def begins_with_r(array)
    array.each do |item|
        if item[0] != "r"
            return false
        end
    end
    return true
end

def contain_a(array)
    a_array = []
    array.each do |item|
        if item.include?("a")
            a_array << item
        end
    end
    a_array
end

def first_wa(array)
    array.each do |item|
        if item[0..1] == "wa"
            return item
        end
    end
    return false
end

def remove_non_strings(array)
    array.delete_if {|item| item.class != String }
end

def count_elements(array)
    #count how many times something appears in an array (of hashes)
    #expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]))
    #.to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}])
    hash_array = []
    array.each do |hash|
        hash.each do |key, value|
            if hash_array.any? {|k| k[:name] == hash[:name]}
                hash_array.each do |k|
                    k[:count] += 1
                end
            else
                new_hash = {key => value, :count => 1}
                hash_array << new_hash
            end
        end
    end
    hash_array
end

def merge_data(keys, data)
    #combines two nested data structures into one
    #[{:first_name=>"blake", :awesomeness=>10, :height=>"74", :last_name=>"johnson"}, {:first_name=>"ashley", :awesomeness=>9, :height=>60, :last_name=>"dubs"}]
    merged = []
    i = 0
    while i < keys.size
        #binding.pry
        merged << keys[i].merge(data[0].values[i])
        i += 1
    end
    merged
end

def find_cool(array)
    #find all cool hashes
    cools = []
    array.each do |hash|
        if hash[:temperature] == "cool"
            cools << hash
        end
    end
    cools
end

def organize_schools(hash)
    #organizes the schools by location
    schools_by_location = {}
    name_save = ""
    hash.each do |school_hash|
        school_hash.each do |item|

            if item.class == Hash
                item.each do |key, location|
                    #binding.pry
                    if schools_by_location.keys.include?(location)
                        schools_by_location[location] << name_save
                    else
                        schools_by_location[location] = [name_save]
                    end
                end
            else
                name_save = item
            end
        end
    end
    schools_by_location
end