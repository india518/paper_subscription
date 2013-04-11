class CreateSubscriptionRecords < ActiveRecord::Migration
  def change
    create_table :subscription_records do |t|
      t.integer :user_id
      t.integer :subscription_plan_id
      
      t.timestamps
    end
  end
end
