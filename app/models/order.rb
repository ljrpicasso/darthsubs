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
    if status == 1
      'Complete'
    else
      'In Kitchen'
    end
  end
  
  def mark_complete
    status = 1
  end
  
  def elapsed
    if status == 1
      'Sandwich is complete!'
    else
      difference = Time.now - created_at

      seconds    =  difference % 60
      difference = (difference - seconds) / 60
      minutes    =  difference % 60
      difference = (difference - minutes) / 60
      hours      =  difference % 24
      difference = (difference - hours)   / 24
      days       =  difference % 7
      weeks      = (difference - days)    /  7
      '%.0f:%02.0f:%02.0f' % [hours, minutes, seconds]
    end
  end
end
