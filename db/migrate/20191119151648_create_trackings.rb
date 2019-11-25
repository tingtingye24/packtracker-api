class CreateTrackings < ActiveRecord::Migration[6.0]
  def change
    create_table :trackings do |t|
      t.string :tracking_number
      t.integer :user_id
      t.string :name
      t.integer :carrier_id

      t.timestamps
    end
  end
end
