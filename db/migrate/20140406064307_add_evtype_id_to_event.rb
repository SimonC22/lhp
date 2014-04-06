class AddEvtypeIdToEvent < ActiveRecord::Migration
  def change
    add_column :events, :evtype_id, :integer 
  end
end
