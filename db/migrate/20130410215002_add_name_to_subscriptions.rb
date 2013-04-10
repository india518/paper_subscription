class AddNameToSubscriptions < ActiveRecord::Migration
  def up
    add_column :subscription_plans, :name, :string
  end
  
  def down
    add_column :subscription_plans, :name
  end
end
