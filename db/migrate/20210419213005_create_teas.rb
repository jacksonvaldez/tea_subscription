class CreateTeas < ActiveRecord::Migration[5.2]
  def change
    create_table :teas do |t|
      t.string :title
      t.string :description
      t.integer :temperature # in fahrenheit
      t.integer :brew_time # in seconds

      t.timestamps
    end
  end
end
