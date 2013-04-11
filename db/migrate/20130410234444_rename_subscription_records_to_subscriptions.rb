class RenameSubscriptionRecordsToSubscriptions < ActiveRecord::Migration
  def up
    drop_table :subscription_records
    create_table :subscriptions do |t|
      t.integer :user_id
      t.integer :subscription_plan_id
      
      t.timestamps
    end
  end

  def down
    drop_table :subscriptions
    create_table :subscription_records do |t|
      t.integer :user_id
      t.integer :subscription_plan_id
      
      t.timestamps
    end
  end
end
