class Newspaper < ActiveRecord::Base
  attr_accessible :title, :editor_fname, :editor_lname
  
  validates :title, :editor_fname, :editor_lname, :presence => :true
  
  has_many :subscription_plans
  
  def editor_fullname
    "#{editor_fname} #{editor_lname}"
  end
end