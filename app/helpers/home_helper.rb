module HomeHelper
	def parse_place(place)
		coord = Geokit::Geocoders::GoogleGeocoder.geocode "#{place}"
		if coord.success
			return coord.ll.split(',')
		else
			return nil
		end
	end
end
