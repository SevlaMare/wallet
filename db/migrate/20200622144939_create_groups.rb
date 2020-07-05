class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :icon, :default => "https://image.flaticon.com/icons/svg/906/906794.svg"
      t.datetime "created_at", null: false
    end
  end
end
