# == Schema Information
#
# Table name: order_ingredients
#
#  id            :integer         not null, primary key
#  order_id      :integer
#  ingredient_id :integer
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class OrderIngredient < ActiveRecord::Base
  attr_accessible :ingredient_id, :order_id
  belongs_to :orders
  belongs_to :ingredients
end
