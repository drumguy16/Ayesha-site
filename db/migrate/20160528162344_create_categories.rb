class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :image_path, default: 'assets/default.png'
      t.string :description, default: ''

      t.timestamps null: false
    end
  end
end
