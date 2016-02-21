class AddAttachmentImageBackToCards < ActiveRecord::Migration
  def self.up
    change_table :cards do |t|
      t.attachment :image_back
    end
  end

  def self.down
    remove_attachment :cards, :image_back
  end
end
