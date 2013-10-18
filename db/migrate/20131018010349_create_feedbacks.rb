class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :provider_id
      t.text :body

      t.timestamps
    end
  end
end
