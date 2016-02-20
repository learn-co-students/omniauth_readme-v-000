require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe 'get create' do
    it 'assigns omniauth data to @auth' do
      auth_data = {      
        'uid' => 1,     
        'info' => {
          email: 'danny@test.com',
          name: 'Danny',
        }
      }
      @request.env['omniauth.auth'] = auth_data
      get :create
      expect(subject.auth).to eq(auth_data)
    end
  end
end
