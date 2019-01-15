class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :stylist_id
      t.string :url

      t.timestamps
    end
  end
end
