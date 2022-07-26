class GymsController < ApplicationController

    def show 
        gym = Gym.find(params[:id])
        render json: gym, status: :ok
    rescue ActiveRecord::RecordNotFound 
        render json: {error: "Gym not found"}, status: :not_found 
    end 

    def index 
        render json: Gym.all
    end 

    def update 
        gym = Gym.find(params[:id])
        gym.update(name: params[:name], address:params[:address])
        render json: gym, status: :ok
    end 

    def destroy
        gym = Gym.find(params[:id])
        gym.destroy
        head :no_content 
    rescue ActiveRecord::RecordNotFound 
        render json: {error: "Gym not found"}, status: :not_found 
    end 
end
