class CreateCategoryGaleries < ActiveRecord::Migration
  def change
    create_table :category_galeries do |t|
      t.string :name

      t.timestamps
    end
  end
end
