class CreateGaleries < ActiveRecord::Migration
  def change
    create_table :galeries do |t|
      t.string :title
      t.string :url
      t.text :body

      t.timestamps
    end
  end
end
