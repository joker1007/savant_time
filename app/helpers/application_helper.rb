module ApplicationHelper
  def parent_path(path)
    parent = Pathname(path).parent
    if parent.to_s == "."
      entries_path
    else
      entries_path(URI.escape("#{parent.to_s}"))
    end
  end

  def child_path(path)
    if current_path.present?
      entries_path(URI.escape("#{current_path}/#{path}"))
    else
      entries_path(URI.escape("#{path}"))
    end
  end
end
