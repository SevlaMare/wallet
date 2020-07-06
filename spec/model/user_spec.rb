require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new }
  let(:user1) { User.create(name: 'user01') }
  let(:group1) { Group.create(name: 'group01') }
  let(:transaction_without_group) { user1.transactions.build(name: 'trans01', amount: 123) }

  context 'Model' do
    it 'should exist' do
      expect(user).not_to be_nil
    end
  end

  context 'Has association that allows' do
    it 'autofill id using association' do
      user1
      group1
      transaction_without_group
      expect(user1.transactions.first).not_to be_nil
    end
  end
end
