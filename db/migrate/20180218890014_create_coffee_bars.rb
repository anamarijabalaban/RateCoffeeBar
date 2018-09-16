class CreateCoffeeBars < ActiveRecord::Migration[5.1]
  def change
    create_table :coffee_bars do |t|
      t.string :name
      t.string :address
      t.text :info

      t.timestamps
    end
  end
end
