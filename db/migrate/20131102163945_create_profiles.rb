class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""

      t.timestamps
    end
  end
end
