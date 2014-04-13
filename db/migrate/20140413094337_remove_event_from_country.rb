class RemoveEventFromCountry < ActiveRecord::Migration
  def change
    remove_column :countries, :event_id
  end
end
