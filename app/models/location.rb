class Location < ActiveRecord::Base

	geocoded_by :address
	after_validation :geocode

	def self.get_address(a)
		s = Geocoder.search(a)
		s[0].address
	end
end
