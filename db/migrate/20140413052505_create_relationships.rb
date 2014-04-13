class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :country_id
      t.integer :event_id

      t.timestamps
    end
  end
end
