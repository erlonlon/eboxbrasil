class CreateCategoriesPosts < ActiveRecord::Migration
  def change
  	create_table :categories_posts, :id => false, :force => true do |t|
  		t.references :category
  		t.references :post
  	
  	end
  end
end
