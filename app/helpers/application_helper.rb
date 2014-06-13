module ApplicationHelper
  def flash_class(level)
    case level
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-error"
      when :alert then "alert alert-alert"
    end
  end
  
  def debug_info(infotext)
    if infotext.blank?
      #"#{infotext}"
    else
      text = "Debug Info: #{infotext}"
      simple_format(text, wrapper_tag: "div", class: "alert alert-info") 
    end    
  end
end
