class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.float "price_usd"
      t.string "status"
      t.integer "frequency_weeks"

      t.timestamps
    end
  end
end
