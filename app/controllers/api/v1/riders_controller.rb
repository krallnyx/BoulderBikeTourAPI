module Api
    module V1
        class RidersController < ApplicationController
            def index
                @riders = Rider.all
                render json: @riders
            end

            def show
                rider = Rider.find(params[:id])
                render json: {status: 'SUCCESS', message:'Loaded rider', data: rider}, status: :ok
            end

            # If we want to update the riders
            # def update
            #     rider = Rider.find(params[:id])
            #     if rider.update_attributes(rider_params)
            #         render json: {status: 'SUCCESS', message:'Rider updated', data: rider}, status: :ok
            #     else
            #         render json: {status: 'ERROR', message:'Rider not updated', data: rider.errors}, status: :unprocessable_entity
            #     end
            # end
        end
    end
end