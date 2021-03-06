# == Schema Information
#
# Table name: ingredients
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Ingredient < ActiveRecord::Base
  attr_accessible :name, :orders_attributes, :recipe_attributes
  
  has_many :recipes
  has_many :orders, :through => :recipes
end
