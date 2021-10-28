vowels = Hash.new
counter = 0

("a".."z").each { |letter|
  counter += 1
  vowels[letter.intern] = counter if ["a", "e", "i", "o", "u", "y"].include?(letter)
}
print "Vowel sequence number: #{vowels}\n"