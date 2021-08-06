class Genre < ApplicationRecord
    has_many :concepts
    has_many :users , through: :concepts
    has_many :media_types , through: :concepts
end
