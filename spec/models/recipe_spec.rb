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

require 'spec_helper'

describe Recipe do
  pending "add some examples to (or delete) #{__FILE__}"
end
