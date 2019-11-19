class PigLatinizer
    ####convert to pig latin
    # if starts with consonant, remove first letter, add to end, then add -ay to end of that
    # if starts with vowel, remove first letter, add to end, then add -way to end of that

    def make_piglatin(word)
        first_letter = word[0].downcase
        if ["a", "e", "i", "o", "u"].include?(first_letter)
            # piglatin word that starts with a vowel
            "#{word}way"
        else
            # piglatin word that starts with a consonant
            consonants = []
            consonants << word[0]

            if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                consonants << word[1]

                # if multiple words
                if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                    consonants << word[2]
                end
            end
        "#{word[consonants.length..-1] + consonants.join + "ay"}" # using slice
        end
    end

    def piglatinize(string)
        if string.split.size == 1
            make_piglatin(string)
        else
            str_split = string.split(" ")
            piglatin_map = str_split.map {|s| make_piglatin(s)}
            piglatin_map.join(" ")
        end
    end
end