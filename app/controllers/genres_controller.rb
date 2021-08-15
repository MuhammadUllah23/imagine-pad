class GenresController < ApplicationController

    def index
        @genres = Genre.order_by_name
    end

    def show
        @genre = Genre.find_by_id(params[:id])
    end

    def new
        @genre = Genre.new
    end

    def create
    end

    private
    
    def genre_params
        params.require(:genre).permit(:name)
    end
end
