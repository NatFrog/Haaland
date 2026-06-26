module ApplicationHelper
  def nav_link_class(path)
    current_page?(path) ? "nav-link active" : "nav-link"
  end

  def time_ago(time)
    "#{time_ago_in_words(time)} ago"
  end
end
