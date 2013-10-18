class AddColumnToMeasuresForRaw < ActiveRecord::Migration
  def change
  	add_column :measures, :measure_raw, :text
  end
end
