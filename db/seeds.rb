# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



lasership = Carrier.create(name: "Laser Ship" , tracking_url: "http://www.lasership.com/track/", logo: "https://s.ordertracking.com/images/document/2019082398565048.png")
usps = Carrier.create(name: "USPS" , tracking_url: "https://tools.usps.com/go/TrackConfirmAction?tRef=fullpage&tLc=2&text28777=&tLabels=", logo: "https://11tcma2eyqgmz6zyt1x6na8n-wpengine.netdna-ssl.com/wp-content/uploads/2014/09/usps-logo-300-150_d7cc693dd641e99ab46c684ebb6ace90.png")
ups = Carrier.create(name: "UPS" , tracking_url: "https://wwwapps.ups.com/WebTracking?HTMLVersion=5.0&TypeOfInquiryNumber=T&loc=en_US&InquiryNumber1=", logo: "https://s3-eu-west-1.amazonaws.com/international-live/img/images/bXvHwf.png")
fedex = Carrier.create(name: "Fedex" , tracking_url: "https://www.fedex.com/apps/fedextrack/?tracknumbers=", logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/FedEx_Corporation_-_2016_Logo.svg/1200px-FedEx_Corporation_-_2016_Logo.svg.png")
dhl = Carrier.create(name: "DHL" , tracking_url: "https://www.dhl.com/en/express/tracking.html?AWB=", logo: "https://storage.googleapis.com/easyship-assets/website/courier-logos/color-img/dhl.png")




user1 = User.create(username: "Amber", password_digest: "123")

Tracking.create(user_id: user1.id, tracking_number: "1LS717760706085", carrier_id: lasership.id, name: "Urban Outfitter")
Tracking.create(user_id: user1.id, tracking_number: "789707961520", carrier_id: fedex.id, name: "Claire's FEDEX")
Tracking.create(user_id: user1.id, tracking_number: "92055902004365000041460568", carrier_id: usps.id, name: "Claire's USPS")
Tracking.create(user_id: user1.id, tracking_number: "3048354072", carrier_id: dhl.id, name: "Claire's DHL")
Tracking.create(user_id: user1.id, tracking_number: "EG252301681KR", carrier_id: usps.id, name: "Cees's USPS")
Tracking.create(user_id: user1.id, tracking_number: "013840277240013", carrier_id: fedex.id, name: "Cees's Fedex")
Tracking.create(user_id: user1.id, tracking_number: "1ZA393050322890054", carrier_id: ups.id, name: "Best Buy")
Tracking.create(user_id: user1.id, tracking_number: "3341346783", carrier_id: dhl.id, name: "Justin's DHL")

