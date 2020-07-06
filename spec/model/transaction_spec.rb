require 'rails_helper'

RSpec.describe Transaction, type: :model do
  let(:transaction) { Transaction.new }
  let(:user1) { User.create(name: 'user01') }
  let(:group1) { Group.create(name: 'group01') }
  let(:transaction_with_group) { user1.transactions.build(name: 'trans01', amount: 123, group_id: 1) }
  let(:transaction_without_group) { user1.transactions.build(name: 'trans01', amount: 123) }

  context 'Model' do
    it 'should exist' do
      expect(transaction).not_to be_nil
    end
  end

  context 'Has association, ' do
    it 'has a user' do
      user1
      group1
      transaction_with_group
      expect(transaction_with_group.user.name).not_to be_nil
    end

    it 'has a group' do
      user1
      group1
      transaction_with_group
      expect(transaction_with_group.group.name).not_to be_nil
    end
  end
end
