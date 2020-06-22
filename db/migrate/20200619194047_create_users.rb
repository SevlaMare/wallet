class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, primary_key: 'AuthorId' do |t|
      t.string :Name
    end
  end
end
