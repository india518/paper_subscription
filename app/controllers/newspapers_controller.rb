class NewspapersController < ApplicationController
  
  def index
    @newspapers = Newspaper.all
  end
  
  def new
    @newspaper = Newspaper.new
    2.times { @newspaper.subscription_plans.build }
  end
  
  def create
    @newspaper = Newspaper.new(params[:newspaper])
    if @newspaper.save
      redirect_to newspaper_url(@newspaper)
    else
      # REV: Good to have the flash warning
      flash[:errors] = @newspaper.errors.full_messages
      render :new
    end
  end
  
  def show
    @newspaper = Newspaper.find(params[:id])
  end
  
end
