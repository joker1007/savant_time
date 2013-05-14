module ApplicationHelper
  def parent_path(path)
    parent = Pathname(path).parent
    if parent.to_s == "."
      ""
    else
      URI.escape(parent.to_s)
    end
  end

  def child_path(path)
    if current_path.present?
      URI.escape("/#{current_path}/#{path}")
    else
      URI.escape("/#{path}")
    end
  end
end
