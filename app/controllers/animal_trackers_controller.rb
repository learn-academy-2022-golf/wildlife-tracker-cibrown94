class AnimalTrackersController < ApplicationController
    def index
        animals = AnimalTracker.all
        render json: animals
    end

    def show 
        animal = AnimalTracker.find(params[:id])
        render json: animal
      end

      def create
        animal = AnimalTracker.create(animal_params)
        if animal.valid?
          render json: animal
        else
          render json: animal.errors
        end
    end


      def destroy
        animal = AnimalTracker.find(params[:id])
        if animal.destroy
          render json: animal
        else
          render json: animal.errors
        end
    end

      def update
        animal = AnimalTracker.find(params[:id])
        animal.update(animal_params)
        if animal.valid?
          render json: animal
        else
          render json: animal.errors
        end
      end
    
      private
      def animal_params
        params.require(:animal_tracker).permit(:common_name, :scientific_binomial)
      end
    
end