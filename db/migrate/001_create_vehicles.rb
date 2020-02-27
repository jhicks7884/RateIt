class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :vehicle_type
      t.string :style
      t.string :model
      t.string :make
      t.integer :year
      t.integer :user_id
    end
  end
end
