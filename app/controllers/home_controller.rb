class HomeController < ApplicationController
  def index
    render text: ""
  end
  def create
    render json: params.slice(:title)
  end
end
