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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ingredients_order, :class => 'IngredientsOrders' do
    ingredient_id 1
    order_id 1
  end
end
