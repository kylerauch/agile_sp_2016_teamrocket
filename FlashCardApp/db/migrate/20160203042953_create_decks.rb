class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :created_by

      t.timestamps null: false
    end
  end
end
