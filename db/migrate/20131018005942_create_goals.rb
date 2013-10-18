class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.text :name
      t.text :type
      t.integer :metric

      t.timestamps
    end
  end
end
