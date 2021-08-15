class ConceptsController < ApplicationController
    before_action :redirect_if_not_logged_in?

    def index
        #byebug
        if params[:genre_id] && @genre = Genre.find_by_id(params[:genre_id])
            @concepts = @genre.concepts
        else
            @concepts = Concept.all
        end
    end

    def new
        @concept = Concept.new
    end

    def create
        @concept = Concept.new(concept_params)
        @concept.user = current_user
        #byebug
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
        params.require(:concept).permit(:title, :content, :media_type_id, :genre_id, genre_attributes: [:name])
    end
end
