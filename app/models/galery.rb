class Galery < ActiveRecord::Base
  attr_accessible :body, :title, :url, :document, :category_galery_ids
  has_and_belongs_to_many :category_galeries
 
   validates_presence_of :title
   has_attached_file :document, :styles => { :medium => "300x300#", :thumb => "100x100#" }
   validates_attachment_presence :document
   validates_attachment_size :document, :less_than => 1.megabyte
   validates_attachment_content_type :document, :content_type => %w(image/png image/jpeg image/gif)

end
