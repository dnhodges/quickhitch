class RemovePostalCodeFromLocations < ActiveRecord::Migration
  def change
  	remove_column :locations, :postal_code, :string
  end
end
