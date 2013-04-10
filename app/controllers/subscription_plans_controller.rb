class SubscriptionPlansController < ApplicationController
  
  def new
    @newspaper = Newspaper.find(params[:newspaper_id])
    if params[:subscription_plan]
      @subscription = SubscriptionPlan.new(params[:subscription_plan])
    else
      @subscription = SubscriptionPlan.new
    end
  end
  
  def create
    @subscription = SubscriptionPlan.new(params[:subscription_plan])
    @newspaper = Newspaper.find(@subscription.newspaper_id)
    if @subscription.save
      redirect_to newspaper_url(@newspaper)
    else
      render :new
    end
  end
  
  def show
    @subscription = SubscriptionPlan.find(params[:id])
  end
  
end
