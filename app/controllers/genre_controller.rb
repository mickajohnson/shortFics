class GenreController < ApplicationController
  def index
  end

  def snippet
    @genre = Genre.find(params[:genre_id])
    stories = Story.where("genre_id = ?", @genre.id)
    @story = stories.sample 
  end
end
