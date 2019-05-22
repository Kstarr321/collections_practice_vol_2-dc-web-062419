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
  keys.each do |hash| #keys is an array of hashes
    first_name = hash[:first_name] #calls the value assocaited with the key :first_name and sets it to a variable called first_name 
    
    info = data[0][first_name] #data is an array of hashes also. data[0] will call the first value in the array which is a hash. Then, using a previously set variable "first_name"...we use it to call the deeper hash assocaited with that person's name (which is a key). We set that hash to a varibale called "Info"
    puts info 
    info.each do |key, value| #since info is a hash we can iterate through it and use key/value pairs as placeholders. This is where we are going to merge the two hashes. 

      hash[key] = value # 



    end
  end
end





