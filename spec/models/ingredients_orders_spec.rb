# == Schema Information
#
# Table name: ingredients_orders
#
#  id            :integer         not null, primary key
#  ingredient_id :integer
#  order_id      :integer
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

require 'spec_helper'

describe IngredientsOrders do
  pending "add some examples to (or delete) #{__FILE__}"
end
