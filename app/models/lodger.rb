class Lodger < ActiveRecord::Base
  
  validates :name, presence: true
  validates :phone, presence: true
  #validates :references, presence: true
  
  #validates_confirmation_of :password
  has_secure_password

  
  validates :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  
end
