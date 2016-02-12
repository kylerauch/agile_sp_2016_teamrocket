class AddStyleIdToDecks < ActiveRecord::Migration
  def change
    add_reference :decks, :style, index: true, foreign_key: true
  end
end
