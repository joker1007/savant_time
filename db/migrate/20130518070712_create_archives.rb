class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :aid, null: false
      t.string :description
      t.string :filesize
      t.string :sha256

      t.timestamps
    end

    add_index :archives, :aid, unique: true
  end
end
