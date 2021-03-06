class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.integer :price # in cents
      t.integer :frequency # in days
      t.references :tea, foreign_key: true

      t.timestamps
    end
  end
end
