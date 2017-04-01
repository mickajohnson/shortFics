class GenreController < ApplicationController
  def index
  end

  def snippet
    @genre = Genre.find(params[:genre_id])
    puts @genre.inspect
    stories = Story.where("genre_id = ?", @genre.id)
    puts stories.inspect
    @story = stories.sample
  end
end
