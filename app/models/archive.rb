class Archive < ActiveRecord::Base
  validates :aid, presence: true, uniqueness: true

  # SQLiteでは8bit INTしか扱えず文字列として保持しているので、整数に変換してから返す
  def filesize
    super.to_i
  end

  def retrieve
    glacier = Glacier.new
    glacier.retrieve_archive(aid)
  end
end
