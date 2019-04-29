require 'rails_helper'

RSpec.describe BlogsController, type: :controller do
  let!(:user) { create :user }
  let!(:blog) { create :blog, user: user }

  describe 'GET #new' do
    it 'get blogs' do
      login_user user
      get :new
      expect(response).to render_template(:new)
    end
  end
end
