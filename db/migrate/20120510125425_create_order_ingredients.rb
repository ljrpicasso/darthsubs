class CreateOrderIngredients < ActiveRecord::Migration
  def change
    create_table :order_ingredients do |t|
      t.integer :order_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
