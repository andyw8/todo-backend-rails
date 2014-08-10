class TodosController < ApplicationController
  def index
    render json: Todo.all
  end

  def create
    render json: Todo.create(todo_params)
  end

  def destroy
    render text: ""
  end

  private

  def todo_params
    params.permit(:title)
  end
end
