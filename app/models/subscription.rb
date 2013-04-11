class Subscription < ActiveRecord::Base
  attr_accessible :user_id, :subscription_plan_id
  
  validates :user_id, :subscription_plan_id, :presence => true
  
  belongs_to :user, :inverse_of => :subscriptions
  belongs_to :subscription_plan
end
