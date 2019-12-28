module ApplicationHelper
  def truncate(string, max_length)
    str = string.to_s
    if str.length > max_length
      str[0...max_length] + "..."
    else
      str
    end
  end

  def instance_image_tag(photo, options = {})
    if photo.attached?
      cl_image_tag photo.key, options
    else
      image_tag "no-picture.png", options
    end
  end
end
