class AddProfilePictureToStylists < ActiveRecord::Migration[5.2]
  def change
    add_column :stylists, :profile_picture, :string
  end
end
