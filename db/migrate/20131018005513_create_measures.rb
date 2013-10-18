class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
      t.integer :user_id
      t.datetime :measure_date
      t.float :measure_distance
      t.float :measure_calories
      t.float :measure_elevation

      t.timestamps
    end
  end
end
