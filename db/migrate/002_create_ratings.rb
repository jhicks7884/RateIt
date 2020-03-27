class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :vehicle_id
      t.integer :vehicle_ratings

    end
  end
end
