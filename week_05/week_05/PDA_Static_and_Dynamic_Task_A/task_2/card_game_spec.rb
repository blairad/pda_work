require('minitest/autorun')
require('pry')
require('minitest/rg')
require_relative('card_game.rb')
require_relative('card.rb')

class CardGameTest < Minitest::Test

  def setup()
    @card1 = Card.new("spade", 1)
    @card2 = Card.new("clubs", 2)
    @card3 = Card.new("hearts", 3)
    @card4 = Card.new("diamonds", 4)

  end

  def test_check_for_ace()
    assert_equal(true, CardGame.check_for_ace(@card1))
  end

  def test_highest_card()
    assert_equal(@card2, CardGame.highest_card(@card1,  @card2))
  end

  def test_cards_total()
    cards = [@card1, @card4]
    assert_equal("You have a total of 5", CardGame.cards_total(cards))
  end
end

# binding.pry
# nil
end
