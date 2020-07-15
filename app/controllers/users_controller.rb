class UsersController < ApplicationController
  def create
    User.create(name: params[:name], score: params[:score])
    render json: User.high_scores
  end

  def index
    render json: User.high_scores
  end

  def destroy
    render json: User.find(params[:id]).destroy
  end
end
