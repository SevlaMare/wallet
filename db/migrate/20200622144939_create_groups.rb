class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :icon
      t.datetime "created_at", null: false
    end
  end
end
