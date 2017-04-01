class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :pref_text_size
      t.boolean :pref_color_inversion

      t.timestamps
    end
  end
end
