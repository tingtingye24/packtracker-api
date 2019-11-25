class CreateCarriers < ActiveRecord::Migration[6.0]
  def change
    create_table :carriers do |t|
      t.string :name
      t.string :tracking_url
      t.string :logo

      t.timestamps
    end
  end
end
