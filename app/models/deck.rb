class Deck < ActiveRecord::Base
    belongs_to :category
    belongs_to :style
    has_many :cards
    validates_presence_of :title
    
    def self.find_all_by_query(query)
        query = query.downcase
        query = "%#{query}%"
        
        Deck.where(['lower(title) like ?', query])
    end
end
