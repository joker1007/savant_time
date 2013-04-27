module ApplicationHelper
  def parent_path(path)
    parent = Pathname(path).parent
    if parent.to_s == "."
      ""
    else
      parent.to_s
    end
  end

  def child_path(path)
    if current_path.present?
      "/#{current_path}/#{path}"
    else
      "/#{path}"
    end
  end
end
