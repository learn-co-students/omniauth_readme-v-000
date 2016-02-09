require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe 'get create' do
    it 'assigns omniauth data to @auth' do
      auth = {
        'info' => {
          email: 'bob@gmail.com',
          name: 'Bob Smith',
        }
      }
      @request.env['omniauth.auth'] = auth
      get :create
      assert assigns(:auth) == auth
    end
  end
end
