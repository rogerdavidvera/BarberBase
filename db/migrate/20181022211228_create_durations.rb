class CreateDurations < ActiveRecord::Migration[5.2]
  def change
    create_table :durations do |t|
      t.string :length

      t.timestamps
    end
  end
end
