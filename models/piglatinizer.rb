# require 'pry'

class PigLatinizer
    attr_reader :text

    def initialize(text)
        @text = text
    end

    def piglatinize_words(text)
        vowels = ["a", "e", "i", "o", "u"]
        consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
        word = text.split("")
        # puts word
        # word.each do |word|
        # result = []
            # if vowels.include? word[0]
            #     word + ["w", "a", "y"]
            # end
            
            if consonants.include? word[0]
                letter = [word.shift] 
                word + letter + ["a", "y"]
            elsif consonants.include? (word[0] && word[1])
                letter = word.shift(2)
                word + letter + ["a", "y"]
            elsif consonants.include? (word[0] && word[1] && word[2])
                letter = word.shift(3) 
                word + letter + ["a", "y"]
            end

    end
   

    # piglatinize_words(text)

    # def split_words
    #     words = text.split(" ")
    # end
 
end

binding.pry