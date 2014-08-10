require 'rails_helper'

RSpec.describe Todo, :type => :model do
  subject { Todo.new(title: 'test todo', id: 2) }
  it 'should have url' do
    expect(subject.url).to eq 'http://todo-backend-rails.herokuapp.com/2'
  end
  it 'should include url in json output' do
    expect(subject.to_json).to include 'url'
  end
end
