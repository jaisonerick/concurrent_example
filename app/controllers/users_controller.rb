class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: { id: user.id, balance: user.balance }
  end

  def index
    render json: User.all.map { |user| { id: user.id } }
  end
end
