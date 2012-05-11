# == Schema Information
#
# Table name: orders
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  product_id :integer
#  status     :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Order < ActiveRecord::Base
  attr_accessible :product_id, :status, :user_id, 
                  :ingredient_attributes, :recipe_attributes, :ingredient_ids,
                  :product_attributes
  
  has_many :recipes
  has_many :ingredients, :through => :recipes
  belongs_to :product
  belongs_to :user
  
  def status_is
    if :status == 2
      'Complete'
    else
      'In Kitchen'
    end
  end
  
end
