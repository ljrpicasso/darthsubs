# == Schema Information
#
# Table name: orders
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  product_id :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Order < ActiveRecord::Base
  attr_accessible :product_id, :user_id
  has_many :order_ingredients
  has_many :ingredients, :through => :order_ingredients
  belongs_to :user
  
  def status_is
    if status == 2
      'Complete'
    else
      'In Kitchen'
    end
  end
end
