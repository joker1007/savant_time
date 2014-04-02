# coding: utf-8
module FileEntryDecorator
  def check_box
    check_box_tag("targets[]", fullpath, false, class: ["js-archive-target"])
  end

  def entry_name
    name
  end

  def action
    link_to "Backup", child_path(name), remote: true, method: :post, class: %w(btn btn-default backup)
  end
end
