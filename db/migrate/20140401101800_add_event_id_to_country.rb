class AddEventIdToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :event_id, :integer 
  end
end
