class AddTestToCounrties < ActiveRecord::Migration
  def change
    add_column :countries, :test, :string
  end
end
