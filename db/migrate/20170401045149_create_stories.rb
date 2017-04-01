class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :author
      t.string :genre
      t.string :title
      t.text :content
      t.text :snippet
      t.integer :avg_reading_time

      t.timestamps
    end
  end
end
