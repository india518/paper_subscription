class Newspaper < ActiveRecord::Base
  attr_accessible :title, :editor_fname, :editor_lname,
                  :subscription_plans_attributes
  
  validates :title, :editor_fname, :editor_lname, :presence => true
  
  has_many :subscription_plans, :inverse_of => :newspaper
  accepts_nested_attributes_for :subscription_plans, :reject_if => :all_blank
  
  def editor_fullname
    "#{editor_fname} #{editor_lname}"
  end
end