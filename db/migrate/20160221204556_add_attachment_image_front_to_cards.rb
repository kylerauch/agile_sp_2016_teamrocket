class AddAttachmentImageFrontToCards < ActiveRecord::Migration
  def self.up
    change_table :cards do |t|
      t.attachment :image_front
    end
  end

  def self.down
    remove_attachment :cards, :image_front
  end
end
