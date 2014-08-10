require 'rails_helper'

RSpec.describe TodosController, :type => :controller do
  context 'GET index' do
    context 'no todos' do
      before { allow(Todo).to receive(:all).and_return([]) }
      it 'should respond successfully' do
        get :index
        expect(response).to be_successful
      end
      it 'should return empty array' do
        get :index
        expect(response.body).to eq [].to_json
      end
    end
    context 'with todo' do
      let(:todo) { double }
      before { allow(Todo).to receive(:all).and_return([todo]) }
      it 'should return non-empty array' do
        get :index
        expect(response.body).to eq [todo].to_json
      end
    end
  end
  context 'POST create' do
    it 'should respond successfully' do
      post :create
      expect(response).to be_successful
    end

    it 'should echo the todo back' do
      todo = { title: "3" }
      allow(Todo).to receive(:create).and_return(todo)
      post :create, todo
      expect(response.body).to eq todo.to_json
    end

    it 'should create the todo' do
      todo = { title: "3" }
      expect(Todo).to receive(:create).with(todo)
      post :create, todo
    end
  end
  context 'DELETE destroy' do
    it 'should respond successfully' do
      delete :destroy
      expect(response).to be_successful
    end
  end

end
