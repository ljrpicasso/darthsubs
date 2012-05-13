# == Schema Information
#
# Table name: products
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  description :string(255)
#  price       :decimal(, )
#  size        :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Product < ActiveRecord::Base
  attr_accessible :description, :name, :price, :size
  has_many :orders
  
  def description_is
    descriptions = []
    descriptions << "#{name}"
    descriptions << "#{description}"
    descriptions << "#{size} inches"
    descriptions << "$#{price}"
    descriptions.join(', ')
  end
  
  def short_description_is
    descriptions = []
    descriptions << "#{description}"
    descriptions << "#{size} inches"
    descriptions << "$#{price}"
    descriptions.join(', ')
  end
  
end
