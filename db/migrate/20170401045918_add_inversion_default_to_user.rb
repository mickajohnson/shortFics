class AddInversionDefaultToUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :pref_color_inversion, :boolean, :default => false
  end
end
