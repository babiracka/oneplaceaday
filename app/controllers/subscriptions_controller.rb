class SubscriptionsController < ApplicationController

  def new
	@subscription = Subscription.new  
  end

  def create
    # binding.pry
  	# raise params[:subscription].inspect
    #walidacja emaila
	 @subscription = Subscription.new(permit_params)
    if @subscription.save
      redirect_to root_path, notice: 'Thank you for subscribing'
    else
      # binding.pry
      render 'new'
    end
  end

  def permit_params
    params.require(:subscription).permit(:email)
  end

end