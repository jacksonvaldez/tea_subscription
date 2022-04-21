class CreateCustomerSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_subscriptions do |t|
      add_reference :customers, foreign_key: true
      add_reference :subscriptions, foreign_key: true

      t.timestamps
    end
  end
end
