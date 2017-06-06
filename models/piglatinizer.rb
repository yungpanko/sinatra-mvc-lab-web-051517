class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    piglatin = text.split(" ").map do |word|
      if vowels.include?(word[0].downcase)
        word + "way"
      elsif word.start_with?("q")
        word[2..-1] + "quay"
      elsif vowels.include?(word[1].downcase)
        word[1..-1] + word[0] + "ay"
      elsif vowels.include?(word[2].downcase)
        word[2..-1] + word[0..1] + "ay"
      elsif vowels.include?(word[3].downcase)
        word[3..-1] + word[0..2] + "ay"
      end
    end
    piglatin.join(" ")
  end

  def to_pig_latin(text)
    vowels = ["a","e","i","o","u"]
    piglatin = text.split(" ").map do |word|
      if vowels.include?(word[0].downcase)
        word + "way"
      elsif word.start_with?("q")
        word[2..-1] + "quay"
      elsif vowels.include?(word[1].downcase)
        word[1..-1] + word[0] + "ay"
      elsif vowels.include?(word[2].downcase)
        word[2..-1] + word[0..1] + "ay"
      elsif vowels.include?(word[3].downcase)
        word[3..-1] + word[0..2] + "ay"
      end
    end
    piglatin.join(" ")
  end
  end
