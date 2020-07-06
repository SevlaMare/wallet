require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new }
  let(:user1) { User.create(name: 'user01') }
  let(:group1) { Group.create(name: 'group01') }
  let(:transaction_with_group) { user1.transactions.build(name: 'trans01', amount: 123, group_id: 1) }
  let(:transaction_without_group) { user1.transactions.build(name: 'trans01', amount: 123) }

  context 'Model' do
    it 'should exist' do
      expect(user).not_to be_nil
    end
  end

  context 'Autofill id using association' do
    it 'create a transaction' do
      user1
      group1
      transaction_with_group
      expect(user1.transactions.first).not_to be_nil
    end
  end
end
