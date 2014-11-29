class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email, unique: true
      t.integer :facebook_id
      t.timestamps
    end
  end
end
