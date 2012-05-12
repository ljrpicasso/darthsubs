class HomeController < ApplicationController
  def index
    unless current_user.nil?
      if (current_user.has_role? :admin) or
         (current_user.has_role? :cook)
         @orders = Order.all
      else
         @orders = Order.find_all_by_user_id(current_user.id, 
                        :order => "created_at DESC",
                        :limit => 5)
      end
    end
  end
    
end
