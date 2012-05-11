# == Schema Information
#
# Table name: recipes
#
#  id            :integer         not null, primary key
#  ingredient_id :integer
#  order_id      :integer
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Recipe < ActiveRecord::Base
  attr_accessible :ingredient_id, :order_id
  
  belongs_to :order
  belongs_to :ingredient
end
