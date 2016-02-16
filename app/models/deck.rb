class Deck < ActiveRecord::Base
    belongs_to :category
    belongs_to :style
    has_many :cards
    validates_presence_of :title
end
