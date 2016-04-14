require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe 'get create' do
    it 'assigns omniauth data to @auth' do
      auth_data = {
        'uid' => 1,
        #more realistically: uid: 11011012324890583
        'info' => {
          email: 'Roberto@test.com',
          name: 'Roberto',
        }
      }
      @request.env['omniauth.auth'] = auth_data
      get :create
      expect(subject.auth).to eq(auth_data)
    end
  end
end
