class AddAttachmentPicPathToPics < ActiveRecord::Migration
  def self.up
    change_table :pics do |t|
      t.attachment :pic_path
    end
  end

  def self.down
    remove_attachment :pics, :pic_path
  end
end

