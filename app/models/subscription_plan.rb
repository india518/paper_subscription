class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :newspaper_id, :daily, :price, :name
  
  validates :newspaper_id, :presence => :true
  belongs_to :newspaper
  
  def daily?
    daily
  end
  
  def daily_label
    return "Daily" if daily?
    "Weekly"
  end
end
