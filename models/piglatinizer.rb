class PigLatinizer 

  def piglatinize(string)
    word_array = string.split(" ")
    word_array.length == 1 ? piglatinize_word(string) : piglatinize_sentence(string)
  end

  private

  def piglatinize_word(str)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
  
    if vowels.include?(str[0].downcase) 
      str + 'way'
    elsif consonants.include?(str[0].downcase) && consonants.include?(str[1].downcase) && consonants.include?(str[2].downcase)
        str[3..-1] + str[0..2] + 'ay'
    elsif consonants.include?(str[0].downcase) && consonants.include?(str[1].downcase)
      str[2..-1] + str[0..1] + 'ay'
    elsif consonants.include?(str[0].downcase)
      str[1..-1] + str[0] + 'ay'
    else
      str # return unchanged
    end
  end

  def piglatinize_sentence(sentence)
    sentence.split.map { |word| piglatinize_word(word) }.join(" ")
  end
  
  


end
