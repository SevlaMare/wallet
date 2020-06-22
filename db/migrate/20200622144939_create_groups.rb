class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups, primary_key: 'GroupId' do |t|
      t.string :Name
      t.string :Icon
      t.datetime :CreateAt
    end
  end
end
