class Post < ActiveRecord::Base
attr_accessible :body, :excerpt, :title, :category_ids , :published_at, :slug, :draft, :user_id


validates_presence_of :title, :body, :user_id
belongs_to :user
has_and_belongs_to_many :categories
default_scope order ("created_at DESC")

before_validation :generate_slug

validates_inclusion_of :draft, in: [true, false]
default_scope order: "published_at DESC"

def self.published
  where("draft = ? AND published_at < ?", false, Time.current)
end

def self.search(terms)
  where("title LIKE :t OR body LIKE :t", t: "%#{terms}%")
end

 def to_param
  "#{id}-#{slug}"
end

 protected  
  def generate_slug
   self.slug = title unless slug.present?
   self.slug = slug.parameterize
 end




end
