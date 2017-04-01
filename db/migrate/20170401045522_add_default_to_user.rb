class AddDefaultToUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :pref_text_size, :integer, :default => 16
  end
end
