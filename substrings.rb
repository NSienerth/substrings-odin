
def substrings(string, dictionary)
    string.downcase!
    string = string.split(/\W+/)
    count = string.reduce(Hash.new(0)) do |result, word| 
        result[word] += 1 if dictionary.include?(word)
        result
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Hullaballoo, I say to you, I'm going below."

puts substrings(string, dictionary)