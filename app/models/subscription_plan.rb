class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :newspaper_id, :daily, :price, :name
  
  validates :newspaper, :price, :name, :presence => true
  validates :daily, :inclusion => {:in => [true, false]}
  belongs_to :newspaper, :inverse_of => :subscription_plans
  has_many :subscriptions
  has_many :users, :through => :subscriptions
  # REV: Nice that you added these helper methods
  def daily?
    daily
  end
  
  def daily_label
    return "Daily" if daily?
    "Weekly"
  end
end
