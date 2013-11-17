class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
      t.integer :user_id
      t.datetime :measure_date
      t.float :measure_steps
      t.float :measure_distance
      t.float :measure_calories
      t.float :measure_elevation
      t.float :measure_bpm
      t.text  :measure_raw

      t.timestamps
    end
  end
end
