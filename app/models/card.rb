class Card < ActiveRecord::Base
  belongs_to :deck
  validates_presence_of :frontContent, :backContent, :description
  has_attached_file :image_front, styles: { medium: "400x400#" , thumb: "100x100>" }#, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_front, content_type: /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, attributes: :image_front, less_than: 10.megabytes
  has_attached_file :image_back, styles: { medium: "400x400#" , thumb: "100x100>" }#, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_back, content_type: /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, attributes: :image_back, less_than: 10.megabytes
end
