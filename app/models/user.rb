class User < ApplicationRecord
    has_many :concepts
    has_many :genres, through: :concepts
    has_many :media_types, through: :concepts
    
    validates :email, presence: true
    validates :username, presence: true, uniqueness: true
    has_secure_password

=begin
    def self.from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid']) do |u|
            u.username = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(15) 
        end
    end
=end
end
