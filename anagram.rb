def anagram (word)

 dict = File.open('enable.txt').read
 output = []

 dict.each_line do |line|
     line.chomp!
                                   if word.split('').sort == line.split('').sort
                                  output << line if word != line
                                    end
                        end
       return output
end


print "input the word: "
word = gets.chomp

print "#{anagram(word)}"
print"\n"
