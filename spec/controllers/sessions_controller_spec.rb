require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe 'get create' do
    it 'assigns omniauth data to @auth' do
      auth = {      
        here: 'is',
        some: 'auth',
        data: '.',
        uid: '12345678',
        provider: 'facebook',
        info: {
          email: 'joe@bloggs.com',
          name: 'Joe Bloggs',
        }
      }
      @request.env['omniauth.auth'] = auth
      get :create
      assert assigns(:auth) == auth
    end
  end
end
