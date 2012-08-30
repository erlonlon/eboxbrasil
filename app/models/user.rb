class User < ActiveRecord::Base
  
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name
 
 has_many :posts
  validates_presence_of :first_name, :last_name

  default_scope order("first_name ASC")
  
   def full_name
    "#{first_name} #{last_name}".titleize
  end
end
