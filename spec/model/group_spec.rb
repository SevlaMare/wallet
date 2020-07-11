require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:group) { Group.new }
  let(:user1) { User.create(name: 'user01') }
  let(:group1) { Group.create(name: 'group01') }
  let(:transaction_with_group) { user1.transactions.build(name: 'trans01', amount: 123, group_id: 1) }

  context 'Model' do
    it 'should exist' do
      expect(group).not_to be_nil
    end
  end

  context 'Has association that allows' do
    it 'read transaction' do
      user1
      group1
      transaction_with_group
      expect(Group.first.transactions).not_to be_nil
    end
  end
end
