class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions, primary_key: 'authorId' do |t|
      t.string :name
      t.float :amount
      t.datetime :createAt
    end
  end
end
