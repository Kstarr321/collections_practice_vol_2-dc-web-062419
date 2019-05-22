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







