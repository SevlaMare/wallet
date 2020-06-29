class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :group_id, :integer
  end
end
