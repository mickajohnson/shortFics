class DeleteGenreFromStory < ActiveRecord::Migration[5.0]
  def change
    remove_column :stories, :genre
  end
end
