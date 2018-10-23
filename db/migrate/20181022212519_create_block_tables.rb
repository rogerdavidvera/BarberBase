class CreateBlockTables < ActiveRecord::Migration[5.2]
  def change
    create_table :block_tables do |t|
      t.string :start_time_str
      t.integer :start_time_int
      t.string :start_time_display
      t.string :end_time_display

      t.timestamps
    end
  end
end
