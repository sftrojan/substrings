def substrings(word, dictionary)
	frequency = Hash.new(0)

	word.downcase.split.each do |string|
		dictionary.each do |text|
			frequency[text] +=1 if string[text]
		end 
	end 

	frequency
	
end 

dictionary =  ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)