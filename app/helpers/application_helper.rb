module ApplicationHelper

	  def good_time(status = true)
    res = ""
    if status == true
      res << "Status is true, with a long message attached..."
    else
      res << "Status is false, with another long message"
    end
  end
  
end
