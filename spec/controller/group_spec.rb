require 'rails_helper'

RSpec.describe GroupsController, type: :controller do
  let(:user) { User.create(name: 'user01') }

  describe '#new' do
    it 'block access if not logged in' do
      get :new, params: { id: user.id }
      expect(response).to_not have_http_status(:success)
    end

    it 'block access if not logged in' do
      get :create, params: { id: user.id }
      expect(response).to_not have_http_status(:success)
    end
  end
end
