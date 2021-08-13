class ConceptsController < ApplicationController
    before_action :redirect_if_not_logged_in?

    def index
        @concepts = Concept.all
    end

    def new
        @concept = Concept.new
    end

    def create
        @concept = Concept.new(concept_params)
        byebug
        if @concept.save
            redirect_to concept_path(@concept)
        else
            render :new
        end
    end

    def show
        @concept = Concept.find_by_id(params[:id])
    end
    
    private

    def concept_params
        params.require(:concept).permit(:title, :content, :user_id, :media_type_id, :genre_id)
    end
end
