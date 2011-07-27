module ApplicationHelper

  # Return a title on a per-page basis.               # Documentation comment
  def title                                           # Method definition
    base_title = "Agent Teamwork Lite"  # Variable assignment
    if @title.nil?                                    # Boolean test for nil
      base_title                                      # Implicit return
    else
      "#{base_title} | #{@title}"                     # String interpolation
    end
  end
  
  def logo
    image_tag("logo.jpg", :alt => "UWB", :class => "round")
  end
end
