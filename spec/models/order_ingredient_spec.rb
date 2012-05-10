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

require 'spec_helper'

describe OrderIngredient do
  pending "add some examples to (or delete) #{__FILE__}"
end
