class Address < ActiveRecord::Base
	attr_accessible :line1, :line2, :city, :state, :zipcode
	belongs_to :addressable, :polymorphic => true 
end
