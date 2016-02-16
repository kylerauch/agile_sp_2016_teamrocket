class AddCategoryIdToDecks < ActiveRecord::Migration
  def change
    add_reference :decks, :category, index: true, foreign_key: true
  end
end
