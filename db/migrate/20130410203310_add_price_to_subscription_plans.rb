class AddPriceToSubscriptionPlans < ActiveRecord::Migration
  def up
    add_column :subscription_plans, :price, :float
  end
  
  def down
    remove_column :subscription_plans, :price
  end
end
