# coding: utf-8
module DirectoryEntryDecorator
  def entry_name
    link_to name, child_path(name)
  end

  def action
  end
end
