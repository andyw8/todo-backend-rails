class HomeController < ApplicationController
  def index
    render text: ""
  end
  def create
    render json: params[:todo]
  end
end
