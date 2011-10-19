module ApplicationHelper
  
  def title
    base_title = "Hungry House"
    
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  
  def logo
    image_tag("logo.png", :alt => "Hungry House", :class => "round")
  end
  
end
