class ConceptsController < ApplicationController
    before_action :redirect_if_not_logged_in?, only: [:new, :create, :edit, :update]
    before_action :find_concept, only: [:show, :edit, :update, :destroy]
    def index
        #byebug
        if params[:genre_id] && @genre = Genre.find_by_id(params[:genre_id])
            @concepts = @genre.concepts
        else
            @concepts = Concept.order_by_title
        end
    end

    def new
        if params[:genre_id] && @genre = Genre.find_by_id(params[:genre_id])
            @concept = @genre.concepts.build
        else
            @concept = Concept.new
            @concept.build_genre

        end
        
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

    def edit
 
    end

    def update  
        @concept.update(concept_params)
        if @concept.valid?
            redirect_to concept_path(@concept)
        else
            render :edit
        end
    end

    def show

    end

    def destroy 
        @concept.destroy 
        redirect_to concepts_path
    end
    
    private

    def concept_params
        params.require(:concept).permit(:title, :content, :media_type_id, :genre_id, genre_attributes: [:name])
    end

    def find_concept
        @concept = Concept.find_by_id(params[:id])
    end
end
