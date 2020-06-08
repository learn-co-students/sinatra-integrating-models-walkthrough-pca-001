class TextAnalyzer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def word_count
    words = text.split(" ")
    words.count
  end

  def vowel_count
    text.scan(/[aeoui]/).count
  end

  def consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

  def most_used_letter
    submit = text.gsub(/[^a-z]/, '')
    arr = submit.split('')
    arr1 = arr.uniq
    arr2 = {}

    arr1.map do |c|
      arr2[c] =  arr.count(c)
    end

    biggest = { arr2.keys.first => arr2.values.first }

    arr2.each do |key, value|
      if value > biggest.values.first
        biggest = {}
        biggest[key] = value
      end
    end

    biggest
  end
end
