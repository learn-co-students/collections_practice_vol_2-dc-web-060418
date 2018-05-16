# your code goes here
require "pry"
def begins_with_r(arr)
  if arr.count{|e| e[0] == "r"} ==arr.length
    return true
  else
    return false
  end
end

def contain_a(arr)
  arr.collect do |e|
    if(e.include?("a"))
      e
    else
      nil
    end
  end.compact
end

def first_wa(arr)
  arr.each do |e|
    if(e.to_s.start_with?("wa"))
      return e
    end
  end
end

def remove_non_strings(arr)
  arr.collect do |e|
    if(e.instance_of? String)
      e
    else
      nil
    end
  end.compact
end

def count_elements(arr)
  frequency_array = arr.uniq
  frequency_array.each do |e|
    e[:count] = arr.count(e)
  end

end

def merge_data(keys, data)
  merged_data=[]
  keys.each do |e|
    data.each do |element|
      if(!!element[e[:first_name]])
        merged_data << element[e[:first_name]]
        merged_data.last[:first_name] = e[:first_name]
      end
    end
  end
  merged_data
end


def find_cool(arr)
  arr.collect do |e|
    if(e[:temperature]=="cool")
      e
    else
      nil
    end
  end.compact
end

def organize_schools(school_hash)
  school_hash_reorganized = {}
  school_hash.each do |key, value|
    if(!school_hash_reorganized[value[:location]])
      school_hash_reorganized[value[:location]]=[key]
    else
      school_hash_reorganized[value[:location]].push(key)
    end
  end
  school_hash_reorganized
end
