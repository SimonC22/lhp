class RemoveTestFromCountries < ActiveRecord::Migration
  def change
    remove_column :countries, :test
  end
end
