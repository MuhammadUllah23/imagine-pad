class ConceptsController < ApplicationController

    def index
        @concepts = Concept.all
    end

    def new
        @concept = Concept.new
    end

    def create
        @concept = Concept.new(concept_params)
        if @concept.save
            redirect_to concept_path(@concept)
        else
            render :new
        end
    end

    def show
        @concept = Concept.find_by_id(params[:id])
    end
    
end
