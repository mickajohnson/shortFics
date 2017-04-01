class AddGenreToStory < ActiveRecord::Migration[5.0]
  def change
    add_reference :stories, :genre, foreign_key: true
  end
end
