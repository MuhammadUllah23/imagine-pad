class MediaType < ApplicationRecord
    has_many :concepts
    has_many :users , through: :concepts
    has_many :genres , through: :concepts
end
