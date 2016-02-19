class CardsController < ApplicationController
  before_action :set_deck
  
  
  # GET /decks/:deck_id/cards
  def index
    @cards = @decks.cards
  end

  # GET /decks/:deck_id/cards/:id
  def show
    @cards = @decks.cards.find(params[:id])
  end
  
  # GET /decks/:deck_id/cards/new
  def new
    @cards = @decks.cards.build
  end
  
  # post /decks/:deck_id/cards
  def create
    @cards = @decks.cards.build(card_params)
    
    respond_to do |format|
      if @cards.save
        format.html { redirect_to deck_cards_path(@decks), notice: 'Card was successfully created.' }
        format.json { render :show, status: :created, location: deck_cards_path(@decks, @cards) }
      else
        format.html { render :new }
        format.json { render json: @cards.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @cards = @decks.cards.find(params[:id])
  end
  
  def update
    @cards = @decks.cards.find(params[:id])
    
    respond_to do |format|
      if @cards.update(card_params)
        format.html { redirect_to deck_cards_path(@decks), notice: 'Card was successfully updated.' }
        format.json { render :show, status: :ok, location: @cards }
      else
        format.html { render :edit }
        format.json { render json: @cards.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @cards = @decks.cards.find(params[:id])
    
    @cards.destroy
    respond_to do |format|
      format.html { redirect_to deck_cards_path(@decks), notice: 'Card was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def card_params
    params.require(:card).permit(:frontContent, :backContent, :description, :disabled)
  end
  
  private
    def set_deck
      @decks = Deck.find(params[:deck_id])
    end
    
  def shuffle
    sort_by { rand }
  end
  
  def cardarray
    @cardarray = Array.new
  end
end
