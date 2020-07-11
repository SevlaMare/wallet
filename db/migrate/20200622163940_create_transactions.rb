class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.string :name
      t.float :amount
      t.datetime "created_at", null: false
      t.references :user, foreign_key: true
      t.references :group, foreign_key: true
    end
  end
end
