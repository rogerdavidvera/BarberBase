class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :client_id
      t.integer :stylist_service_id
      t.integer :block_table_id
      t.datetime :date

      t.timestamps
    end
  end
end
