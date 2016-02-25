class AddColumnToDecks < ActiveRecord::Migration
  def change
    add_column :decks, :font_style, :text
    add_column :decks, :font_size, :text
  end
end
