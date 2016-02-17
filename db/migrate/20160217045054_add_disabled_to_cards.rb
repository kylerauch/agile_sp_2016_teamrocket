class AddDisabledToCards < ActiveRecord::Migration
  def change
    add_column :cards, :disabled, :boolean
  end
end
