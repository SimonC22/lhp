class MoveColumn < ActiveRecord::Migration
  def up
    change_column :countries, :event_id, :integer, after: :name
  end
end
