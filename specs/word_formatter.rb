require('minitest/autorun')
require('minitest/rg')
require_relative('../models/word_formatter')

class WordFormatterTest < Minitest::Test
  def setup
    @wordformatter = WordFormatter.new()
  end

  def test_upcase
    assert_equal("KY12 9EA", @wordformatter.upcase("ky12 9ea"))
  end

  def test_camel_case
    assert_equal("capaccinoCappacino", @wordformatter.camel_case("capaccino cappacino"))
  end
end