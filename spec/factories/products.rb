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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "MyString"
    description "MyString"
    price "9.99"
    size 1
  end
end
