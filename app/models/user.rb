class User < ActiveRecord::Base
  attr_accessible :name, :password, :subscription_plan_ids
  
  validates :name, :password, :presence => true
  validates :password, :length => { :minimum => 6 }
  
  has_many :subscriptions, :inverse_of => :user
  has_many :subscription_plans, :through => :subscriptions
  
  accepts_nested_attributes_for :subscriptions, :reject_if => :all_blank,
                                :allow_destroy => true
end
