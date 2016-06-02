class AddAttachmentMainImagePathToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :main_image_path
    end
  end

  def self.down
    remove_attachment :projects, :main_image_path
  end
end
