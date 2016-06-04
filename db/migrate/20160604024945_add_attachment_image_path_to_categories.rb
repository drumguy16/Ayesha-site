class AddAttachmentImagePathToCategories < ActiveRecord::Migration
  def self.up
    change_table :categories do |t|
      t.attachment :image_path
    end
  end

  def self.down
    remove_attachment :categories, :image_path
  end
end
