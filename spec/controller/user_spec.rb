require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { User.create(name: 'user01') }

  describe '#show' do
    it 'block access if not logged in' do
      get :show, params: { id: user.id }
      expect(response).to_not have_http_status(:success)
    end
  end
end
