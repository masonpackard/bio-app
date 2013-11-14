class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.string :gender
  	  t.date   :birth_date, default: "1923-01-01 16:50:11.948219"
  	  t.text   :withings_id
      t.text   :withings_api_key
  	  t.integer	:height_feet
  	  t.integer	:height_inches

      t.timestamps
    end
  end
end
