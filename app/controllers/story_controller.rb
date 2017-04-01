class StoryController < ApplicationController
  def show
    @genre = Genre.find(params[:genre_id])
    @story = Story.find(params[:story_id])
  end
end
