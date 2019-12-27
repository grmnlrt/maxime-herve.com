module ApplicationHelper
  def truncate(string, max_length)
    str = string.to_s
    if str.length > max_length
      str[0...max_length] + "..."
    else
      str
    end
  end
end
