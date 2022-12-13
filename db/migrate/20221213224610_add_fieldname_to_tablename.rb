class AddFieldnameToTablename < ActiveRecord::Migration[7.0]
  def change
    add_column :sightings, :latitude, :integer
  end
end
