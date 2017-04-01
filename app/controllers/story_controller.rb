class StoryController < ApplicationController

  def show
    @genre = Genre.find(params[:genre_id])
    @story = Story.find(params[:story_id])
  end

  def new
    @genres = Genre.all
  end

  def create
    @story = Story.create({title: params[:title], author: params[:author], snippet:params[:snippet], content:params[:content], genre_id:params[:genre]})
    redirect_to '/genres'
  end
end
