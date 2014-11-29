class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.datetime :time, null: false
      t.integer :creator_id, null: false
      t.timestamps
    end
  end
end
