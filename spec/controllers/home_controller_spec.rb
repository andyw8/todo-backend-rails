require 'rails_helper'

RSpec.describe HomeController, :type => :controller do
  context 'GET index' do
    it 'should respond successfully' do
      get :index
      expect(response).to be_successful
    end
    it 'should return empty array' do
      get :index
      expect(response.body).to eq [].to_json
    end
  end
  context 'POST create' do
    it 'should respond successfully' do
      post :create
      expect(response).to be_successful
    end

    it 'should echo the todo back' do
      todo = { title: "3" }
      post :create, todo
      expect(response.body).to eq todo.to_json
    end
  end
  context 'DELETE destroy' do
    it 'should respond successfully' do
      delete :destroy
      expect(response).to be_successful
    end
  end

end
