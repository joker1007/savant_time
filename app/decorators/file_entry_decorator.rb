# coding: utf-8
module FileEntryDecorator
  def entry_name
    name
  end

  def action
    link_to "Backup", child_path(name), remote: true, method: :post, class: [:btn, :backup]
  end
end
