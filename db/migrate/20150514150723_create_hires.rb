class CreateHires < ActiveRecord::Migration
  def change
    create_table :hires do |t|
      t.date :pk_date
      t.date :re_date
      t.integer :client_id
      t.integer :vehicle_id

      t.timestamps null: false
    end
  end
end
