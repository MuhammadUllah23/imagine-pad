class User < ApplicationRecord
    has_many :concepts
    has_many :genres, through: :concepts
    has_many :media_types, through: :concepts
    
    validates :email, presence: true
    validates :username, presence: true, uniqueness: true
    has_secure_password

   
end
