# REV: Everything seems right in these models - using the annotate gem can still be helpful
class User < ActiveRecord::Base
  attr_accessible :name, :subscription_plan_ids
  
  validates :name, :presence => true
  
  has_many :subscriptions, :inverse_of => :user
  has_many :subscription_plans, :through => :subscriptions
  
  accepts_nested_attributes_for :subscriptions, :reject_if => :all_blank
end
