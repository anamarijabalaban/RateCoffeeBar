class CreateCoffeeBars < ActiveRecord::Migration[5.1]
  def change
    create_table :coffee_bars do |t|
      t.string :name
      t.string :address
      t.float :grade

      t.timestamps
    end
  end
end
