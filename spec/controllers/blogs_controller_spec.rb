require 'rails_helper'

RSpec.describe BlogsController, type: :controller do
  let!(:user) { create :user }
  let!(:blog) { create :blog, user: user }

  describe 'GET #index' do
    it 'get blogs' do
      get :index
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end

  describe 'GET #new' do
    it 'get blogs' do
      login_user user
      get :new
      expect(response).to render_template(:new)
    end

    it '未ログイン時はlogin画面へ' do
      get :new
      expect(response.status).to eq(302)
    end
  end
end
