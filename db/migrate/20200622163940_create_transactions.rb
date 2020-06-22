class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions, primary_key: 'TransactionId' do |t|
      t.string :AuthorId
      t.string :Name
      t.float :Amount
      t.datetime :CreateAt
    end
  end
end
