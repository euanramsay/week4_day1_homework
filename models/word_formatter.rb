require 'pry-byebug'

class WordFormatter

  def initialize(word)
    @word = word
  end

  def format_upcase
    return @word.upcase
  end

  def upper_camelcase
    word_array = @word.split
    capitals = word_array.map { |word| word.capitalize }
    camelcase = capitals.join
    return camelcase
  end




end