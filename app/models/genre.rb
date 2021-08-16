class Genre < ApplicationRecord
    has_many :concepts
    has_many :users , through: :concepts
    has_many :media_types , through: :concepts

    validates :name, presence: true, uniqueness: true

    scope :order_by_name, -> {order(name: :asc)}

end
