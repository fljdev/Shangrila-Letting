class Room < ActiveRecord::Base
  belongs_to :landlord
  belongs_to :lodger
  belongs_to :rental
 
geocoded_by :address
after_validation :geocode, :if => :address_changed?


end
