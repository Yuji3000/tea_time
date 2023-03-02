class CreateTea < ActiveRecord::Migration[5.2]
  def change
    create_table :teas do |t|
      t.string :title
      t.float :price
      t.string :description
      t.float :temperature_fahrenheit
      t.integer :brew_time_seconds

      t.timestamps
    end
  end
end
