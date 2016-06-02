class AddAttachmentImagePathToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :image_path
    end
  end

  def self.down
    remove_attachment :images, :image_path
  end
end
