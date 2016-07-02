class AddShowableToPics < ActiveRecord::Migration
  def change
    add_column :pics, :showable, :boolean, :default => false
  end
end
