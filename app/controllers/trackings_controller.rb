class TrackingsController < ApplicationController

    def index
        trackings= Tracking.all
        render json: trackings
    end

    def show
        user = User.find(params[:id])
        trackings = user.trackings
        newTracking = Tracking.trackingScraper(trackings)
        # byebug
        render json: newTracking
    end

    def create
        data = JSON.parse(request.raw_post)
        tracking = Tracking.create(data)
        # byebug
        newTracking = Tracking.trackingScraper([tracking])
        render json: newTracking[0]
        # 

    end

    def destroy
        tracking = Tracking.find(params[:id])
        tracking.destroy
        # byebug
        render json: tracking
    end
end
