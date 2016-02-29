require 'test_helper'

class CardTest < ActiveSupport::TestCase
  test "create a card" do
    card = Card.new
    card.description = "Test"
    card.frontContent = "TestMe"
    card.backContent = "Tease"
    card.created_at = "now"
    card.updated_at = "tuesday"
    assert card.save
  end
end
