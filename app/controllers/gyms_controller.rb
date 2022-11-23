class GymsController < ApplicationController

    def show
        gym = Gym.find(param[:id])
        if gym 
            render json: gym
        else
            render json: {error: "Not available"}, status: :not_found
    
        end
    end

    def destroy
        gym = Gym.find(param[:id])
        if gym
        gym.destroy
        head :no_content
        else
            render json: {error: "Gym not found"}, status: :not_found
        end
    end
end
