class AddHealthProEmail < ActiveRecord::Migration
  def change
  	add_column :healthpros, :email, :string, default: ""
  end
end
