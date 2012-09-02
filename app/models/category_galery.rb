class CategoryGalery < ActiveRecord::Base
  attr_accessible :name, :galery_ids

  validates_presence_of :name
  has_and_belongs_to_many :galeries

  default_scope order("category_galeries.name")
end
