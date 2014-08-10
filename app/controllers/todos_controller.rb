class TodosController < ApplicationController
  def index
    render json: []
  end
  def create
    render json: params.slice(:title)
  end
  def destroy
    render text: ""
  end
end
