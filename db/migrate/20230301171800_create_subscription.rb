class CreateSubscription < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.float :price
      t.string :status
      t.integer  :frequency_weeks
      t.belongs_to :customer, foreign_key: true

      t.timestamps
    end
  end
end
