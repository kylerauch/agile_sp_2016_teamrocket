class Card < ActiveRecord::Base
  belongs_to :deck
  validates_presence_of :frontContent, :backContent, :description
  attr_reader :image_front_remote_url, :image_back_remote_url
  has_attached_file :image_front, styles: { medium: "400x400#" , thumb: "100x100>" }# , :url => "http://some.other.host/stuff/:class/:id_:extension"#, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_front, content_type: /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, attributes: :image_front, less_than: 10.megabytes
  has_attached_file :image_back, styles: { medium: "400x400#" , thumb: "100x100>" }
  validates_attachment_content_type :image_back, content_type: /\Aimage\/.*\Z/
  validates_with AttachmentSizeValidator, attributes: :image_back, less_than: 10.megabytes
  
  

  def image_front_remote_url=(url_value)
    self.image_front = URI.parse(url_value) unless url_value.blank?
    @image_front_remote_url = url_value
  end
  
  def image_back_remote_url=(url_value)
    self.image_back = URI.parse(url_value) unless url_value.blank?
    @image_back_remote_url = url_value
  end

end
