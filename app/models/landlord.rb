class Landlord < ActiveRecord::Base
  has_many :rooms, dependent: :destroy
  
  #validates_confirmation_of :password
  has_secure_password
  validates :password,
    :length => { :minimum => 6, :maximum =>10 }
  
  validates :name, presence: true
  validates :phone, presence: true

  validates :email, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
