module ConceptsHelper

    def index_header
        if @genre 
            content_tag(:h2, "#{@genre.name} Concepts")
        else
            content_tag(:h2, "All Concepts")
        end
    end
end
