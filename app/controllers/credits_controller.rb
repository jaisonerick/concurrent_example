class CreditsController < ApplicationController
  def create
    user = User.find(params[:id])
    credit = user.credits.create!(credit_params)
    user.increment!(:balance, credit.amount)
    render json: { id: credit.id }, status: :created
  end

  private

  def credit_params
    params.require(:credit).permit(:amount)
  end
end
