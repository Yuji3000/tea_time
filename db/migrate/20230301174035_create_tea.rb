class CreateTea < ActiveRecord::Migration[5.2]
  def change
    create_table :teas do |t|
      t.string :title
      t.string :description
      t.float :temperature_fahrenheit
      t.integer :brew_time_seconds
      t.belongs_to :subscription, foreign_key: true

      t.timestamps
    end
  end
end
