require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require_relative '../models/word_formatter'

class TestWordFormatter < MiniTest::Test

  def setup
    @word = WordFormatter.new('hello')
    @sentence = WordFormatter.new('how are you')
  end

  def test_format_upcase
    new_format = @word.format_upcase
    assert_equal('HELLO', new_format)
  end

  def test_upper_camelcase
    new_format = @sentence.upper_camelcase
    assert_equal('HowAreYou', new_format)

  end


end