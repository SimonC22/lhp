class RemoveCountryFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :country_id
  end
end
