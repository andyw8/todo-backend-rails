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
  context 'DELETE destroy_all' do
    it 'should respond successfully' do
      delete :destroy_all
      expect(response).to be_successful
    end
    it 'should delete all records' do
      expect(Todo).to receive(:delete_all)
      delete :destroy_all
    end
  end
  context 'GET show' do
    let(:todo) { double }
    before { allow(Todo).to receive(:find).and_return(todo) }
    it 'should respond successfully' do
      get :show, id: 12
      expect(response).to be_successful
    end
    it 'should respond with todo' do
      get :show, id: 12
      expect(response.body).to eq todo.to_json
    end
  end
  context 'PATCH update' do
    it 'should respond successfully' do
      allow(Todo).to receive(:update)
      patch :update, id: 12
      expect(response).to be_successful
    end
    it 'should render updated object' do
      todo = double
      allow(Todo).to receive(:update).and_return(todo)
      patch :update, id: 12
      expect(response.body).to eq todo.to_json
    end
    it 'should update title' do
      title_attr = { title: 'test' }
      expect(Todo).to receive(:update).with("12", title_attr)
      patch :update, { id: 12 }.merge(title_attr)
    end
    it 'should update completed' do
      completed_attr = { completed: true }
      expect(Todo).to receive(:update).with("12", completed_attr)
      patch :update, { id: 12 }.merge(completed_attr)
    end
  end

end
