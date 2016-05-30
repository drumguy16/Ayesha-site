class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_path, null: false
      t.string :title
      t.belongs_to :project

      t.timestamps null: false
    end
  end
end
