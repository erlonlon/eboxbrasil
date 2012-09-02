class Category < ActiveRecord::Base
  attr_accessible :nome, :post_id

  has_and_belongs_to_many :posts 
  validates_presence_of :nome
 

  default_scope order("categories.nome")
end
