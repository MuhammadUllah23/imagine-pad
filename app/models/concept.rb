class Concept < ApplicationRecord
    belongs_to :user
    belongs_to :genre
    belongs_to :media_type
    accepts_nested_attributes_for :genre #brand_attributes=

    def genre_attributes=(hash_of_attributes)
        if !hash_of_attributes["name"].blank? 
            self.genre = Genre.find_or_create_by(hash_of_attributes)
        end
    end

    scope :order_by_title, -> {order(title: :asc)}
end
