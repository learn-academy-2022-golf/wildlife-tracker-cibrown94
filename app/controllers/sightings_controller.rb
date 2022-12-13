class SightingsController < ApplicationController
    def index
        sightings = Sighting.all
        render json: sightings
    end

    def show 
        sighting = Sighting.find(params[:id])
        render json: sighting
      end

    def create
        sighting = Sighting.create(sighting_params)
        if sighting.valid?
          render json: sighting
        else
          render json: sighting.errors
        end
        
    end

      def update
        sighting = Sighting.find(params[:id])
        sighting.update(sighting_params)
        if sighting.valid?
          render json: sighting
        else
          render json: sighting.errors
        end
      end

      def destroy
        sighting = Sighting.find(params[:id])
        if sighting.destroy
          render json: sighting
        else
          render json: sighting.errors
        end
    end
    
    private
    def sighting_params
        params.require(:sighting).permit(:longitude, :date, :latitude, :animal_tracker_id)
      end
end

t.integer "animal_id"

rails generate migration rename_column :sightings, :animal_id, :animal_tracker_id