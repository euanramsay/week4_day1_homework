require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/word_formatter'

class TestWordFormatter < MiniTest::Test

  def setup
    @word = WordFormatter.new('hello')
  end

  def test_format_upcase
    new_format = @word.format_upcase
    assert_equal('HELLO', new_format)
  end


end