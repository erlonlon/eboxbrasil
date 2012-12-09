class Galery < ActiveRecord::Base
  attr_accessible :body, :title, :url, :document, :category_galery_ids
  has_and_belongs_to_many :category_galeries
 
   validates_presence_of :title
   has_attached_file :document, :styles => {:original =>"810x370>", :small => "1150x420#", :medium => "380x250>", :thumb => "100x100>" }
   validates_attachment_presence :document
   validates_attachment_size :document, :less_than => 2.megabyte
   validates_attachment_content_type :document, :content_type => %w(image/png image/jpeg image/gif)

   default_scope order("created_at DESC")
   before_validation :generate_url


 def to_param
  "#{id}-#{url}"
end

 protected  
  def generate_url
   self.url = title unless url.present?
   self.url = url.parameterize
 end


end
