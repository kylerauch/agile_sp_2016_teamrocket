class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :frontContent
      t.string :backContent
      t.string :description
      t.boolean :isTest, default: false
      t.references :deck, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
