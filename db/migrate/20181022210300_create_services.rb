class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :title
      t.string :type
      t.string :subcategory

      t.timestamps
    end
  end
end
