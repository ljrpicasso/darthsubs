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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_ingredient do
    order_id 1
    ingredient_id 1
  end
end
