class Card < ActiveRecord::Base
  belongs_to :deck
  validates_presence_of :frontContent, :backContent, :description
end
