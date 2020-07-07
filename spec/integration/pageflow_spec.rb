# rspec ./spec/integration/pageflow_spec.rb

require 'rails_helper'

RSpec.describe 'Main Flow', type: :system do
  describe 'Integration test' do
    context 'user flow' do
      it 'interact with main actions' do
        visit('/')
        click_link 'REGISTER'

        # create user
        fill_in('user[name]', with: 'test user')
        find("input[type=submit][value='CREATE ACCOUNT']").click

        # create group
        click_link 'All Groups'
        click_link 'CREATE NEW'
        fill_in('group[name]', with: 'test group')
        find("input[type=submit][value='NEW GROUP']").click

        # create transaction
        click_link 'arrow_back'
        click_link 'All my transactions'
        click_link 'ADD NEW'

        fill_in('transaction[name]', with: 'test trans')
        fill_in('transaction[amount]', with: '678')
        select 'test group', :from => 'transaction[group_id]'
        find("input[type=submit][value='GO']").click
      end
    end
  end
end
