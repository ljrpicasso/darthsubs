module ApplicationHelper
  
  def plain_date( given_date )
    given_date.strftime("%a %b %d %H:%M:%S")    
  end
end
