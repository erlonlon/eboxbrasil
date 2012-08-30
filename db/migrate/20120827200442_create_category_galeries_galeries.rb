class CreateCategoryGaleriesGaleries < ActiveRecord::Migration
  def change

  	create_table :category_galeries_galeries, :id => false, :force => true do |t|
  		t.references :category_galery
  		t.references :galery


  	end
  end
end
