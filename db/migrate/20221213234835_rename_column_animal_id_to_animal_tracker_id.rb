class RenameColumnAnimalIdToAnimalTrackerId < ActiveRecord::Migration[7.0]
  def change
    rename_column(:sightings, :animal_id, :animal_tracker_id) 
  end
end
