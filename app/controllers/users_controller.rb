class UsersController < ApplicationController
    has_many :concepts
    has_many :genres , through: :concepts
    has_many :media_types , through: :concepts

end
