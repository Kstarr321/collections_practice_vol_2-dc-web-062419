def begins_with_r(array)
  tf_arr = []
  array.each do |elmt|
    if elmt.start_with?("r")
      tf_arr << true 
    else 
      tf_arr << false 


    end 
  
  end 
  if tf_arr.include?(false)
    false 
  else 
    true 

  end 
end

def contain_a(array)
arr = []
  array.each do |str|
    if str.include?('a')
      arr << str 



    end 
  end 
  arr 
end

def first_wa(array)
  array.find do |elmt|
    if elmt.class == String
      elmt.start_with?("wa")

      
    end 
  end
end 

def remove_non_strings(array)
  clean_arr = []
  array.each do |elmt|
    if elmt.class == String 
      clean_arr << elmt

    end 
  end 
  clean_arr
end

def count_elements(array)
  array.group_by(&:itself).map do |key, value|
     key.merge({:count => value.length})
  end
end

def merge_data(keys, data)
  keys.each do |hash| 
    first_name = hash[:first_name]
    
    info = data[0][first_name] 


    puts info 
    info.each do |key, value| 

      hash[key] = value 



    end
  end
end

def find_cool(array)
  array.select do |item| 
    item.has_value?('cool')
    # item.values == 'cool'
  end
end


def organize_schools(school_hash)
  organized_hash = {}
  school_hash.each do |school_name, location_hash|
    location = location_hash[:location]
    organized_hash[location] = []
  end
  organized_hash.each do |schools_by_location|
    schools_by_location.each do |location_key, array_of_schools|
      school_hash.each do |school_name, location_hash|
        location = location_hash[:location]
        if location_key == location
          organized_hash[location_key] << school_name
        end
      end
    end
  end
  organized_hash
end

