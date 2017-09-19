class AddAvatarToGame < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :avatar, :string
  end
end
