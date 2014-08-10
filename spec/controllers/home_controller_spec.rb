require 'rails_helper'

RSpec.describe HomeController, :type => :controller do
  context 'GET index' do
    it 'should respond successfully' do
      get :index
      expect(response).to be_successful
    end
  end
end
