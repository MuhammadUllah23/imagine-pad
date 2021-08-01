class ConceptsController < ApplicationController
    belongs_to :user
    belongs_to :genre
    belongs_to :media_type
end
