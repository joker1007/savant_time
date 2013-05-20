# coding: utf-8
module DirectoryEntryDecorator
  def check_box
    ""
  end

  def entry_name
    link_to name, child_path(name)
  end

  def action
  end
end
