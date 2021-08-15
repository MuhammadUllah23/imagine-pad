class GenresController < ApplicationController
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
