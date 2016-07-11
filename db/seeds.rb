City.create(:name => "NYC")
City.create(:name => "San Francisco")

User.create(:name => "John")
User.create(:name => "Ivania")
User.create(:name => "Steven")
User.create(:name => "Juan")
User.create(:name => "Albert")
User.create(:name => "Count of Monte Cristo")

Neighborhood.create(:name => "TriBeCa", :city_id => 1)
Neighborhood.create(:name => "SoHo", :city_id => 1)
Neighborhood.create(:name => "Chelsea", :city_id => 1)
Neighborhood.create(:name => "Fisherman's Wharf", :city_id => 2)
Neighborhood.create(:name => "Big Hill", :city_id => 2)

Listing.create(:address => "33 west 17th st", :listing_type => "flat", :title => "Beautiful Flat in TriBeCa", :description => "Great view", :price => 250.00, :neighborhood_id => 1, :host_id => User.first.id)
Listing.create(:address => "12 west 50th st", :listing_type => "apartment", :title => "Beautiful apartment in Soho", :description => "Great food", :price => 175.00, :neighborhood_id => 2, :host_id => User.first.id)
Listing.create(:address => "20 wharf road", :listing_type => "shack", :title => "Beautiful shack near the bay", :description => "By the Bay", :price => 100.00, :neighborhood_id => 3, :host_id => User.last.id)

Reservation.create(checkin: '2016-05-25', checkout: '2016-05-30', listing_id: Listing.first.id, guest_id: User.find_by(id: 4).id)
Reservation.create(checkin: '2016-06-25', checkout: '2016-06-30', listing_id: Listing.last.id, guest_id: User.find_by(id: 2).id)
Reservation.create(checkin: '2016-07-25', checkout: '2016-07-30', listing_id: Listing.find_by(:id => 2), guest_id: User.find_by(id: 3).id)

Review.create(description: "This place was ok!", rating: 3, guest_id: User.find_by(id: 4).id, listing_id: Listing.first.id)

Review.create(description: "Great stay, close to food!", rating: 5, guest_id: User.find_by(id: 5).id, listing_id: Listing.find_by(id: 2).id)

Review.create(description: "Eh, the host was pushy.", rating: 2, guest_id: User.find_by(id: 6).id, listing_id: Listing.last.id)