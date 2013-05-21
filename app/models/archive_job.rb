class ArchiveJob < ActiveRecord::Base
  has_one :archive, foreign_key: :aid, primary_key: :jid, dependent: :destroy

  paginates_per 200
end
