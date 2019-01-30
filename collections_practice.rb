
require 'pry'

def begins_with_r (array) #true if all elements begin with r
	array_of_r = array.select { |r_word| r_word[0].downcase == "r" } 
	if array_of_r.length == array.length
		return true
	else
		return false
	end
end

def contain_a (array)#return all elements beginning with a
	array_of_a = []
	array.each do |a_in_word| 
		if a_in_word.include?("a")
			array_of_a << a_in_word
		end
	end
	array_of_a
end

def first_wa (array)#return the first elemement beginning with wa
	array.find { |starts_wa| starts_wa[0].downcase == "w" && starts_wa[1].downcase == "a" }
end
 
def remove_non_strings (array)
	strings_array = []
	array.delete_if { |a_string| a_string.class != String}
end

def count_elements (array)#counts repetitions of element
	reps_array = []
	array.uniq.each do |repeated| 
		reps_array << { count: array.count(repeated), name: repeated[:name] }	
	end
	reps_array
end

def merge_data (obj1,obj2)#combine nested data
  obj1.merge(obj2)
end
      
def find_cool (hash)#fimd cool hashes
  hash.each do |name|
    if name[:temperature] == "cool" 
      return [name]
    end
  end
end


=begin
(:schools) {
    {
      "flatiron school bk" => {
        :location => "NYC"
      },
=end

def organize_schools (hash)#sort by location
  school_sorted = {}
  hash.each do |school,loc|
    if school_sorted.key?(loc[:location])
      binding.pry
      school_sorted[loc][:location] << school
    else
      school_sorted = { loc[:location] => [school] }
    end
  end
  school_sorted
end