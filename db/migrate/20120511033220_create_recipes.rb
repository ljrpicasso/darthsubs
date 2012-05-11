class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :ingredient_id
      t.integer :order_id

      t.timestamps
    end
  end
end
