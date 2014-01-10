class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :country_id
      t.string :name
      t.string :type
      t.date :date
      t.string :reference

      t.timestamps
    end
  end
end
