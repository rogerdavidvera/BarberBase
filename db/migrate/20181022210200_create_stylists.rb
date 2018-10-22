class CreateStylists < ActiveRecord::Migration[5.2]
  def change
    create_table :stylists do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :address
      t.integer :years_experience
      t.boolean :stylist_barber

      t.timestamps
    end
  end
end
