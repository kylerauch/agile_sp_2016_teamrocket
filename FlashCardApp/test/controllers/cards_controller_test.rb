require 'test_helper'

class CardsControllerTest < ActionController::TestCase
  
  setup do
    @deck = Deck.first
    @card = Card.first
  end
  
  test "should get index" do
    get :index, deck_id: @deck.id
    assert_response :success
  end

  test "should get show" do
    get :show, deck_id: @deck.id
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
