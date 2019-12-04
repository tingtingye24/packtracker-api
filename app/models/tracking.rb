class Tracking < ApplicationRecord
    belongs_to :user
    belongs_to :carrier

    def self.trackingScraper(trackings)
        newTracking = trackings.map do |tracking|
            trackingCarrier = tracking.carrier
            obj = {id: tracking.id, carrier: trackingCarrier.name, name: tracking.name, carrier_url: trackingCarrier.tracking_url + tracking.tracking_number, tracking_number: tracking.tracking_number, activities: [], logo: trackingCarrier.logo}
            # tracking["activies"] = []
            carriername = trackingCarrier.name.split(" ").map{ |word| word.downcase}.join("")
            url = "http://shipit-api.herokuapp.com/api/carriers/#{carriername}/#{tracking.tracking_number}"
            # url = "http://shipit-api.herokuapp.com/api/carriers/usps/EG2523016"
            unparsed_page = HTTParty.get(url)
            # byebug
            puts carriername
            if !unparsed_page.parsed_response["activities"]
                obj[:error] = "Not found"
            else
                unparsed_page.parsed_response["activities"].map do |activity|
                    testing = obj[:activities].push(activity)
                end
            end   
            obj
            
        end 
        return newTracking
    end

    
end
