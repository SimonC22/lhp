class CreateEvtypes < ActiveRecord::Migration
  def change
    create_table :evtypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
