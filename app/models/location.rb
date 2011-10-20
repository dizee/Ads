class Location < ActiveRecord::Base
	attr_accessible :location_name, :address_attributes
	has_one :address, :as => :addressable, :dependent => :destroy
	accepts_nested_attributes_for :address

end
