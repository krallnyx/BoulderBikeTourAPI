module Api
    module V1
        class SlogansController < ApplicationController
            # def index
            #     @slogans = Slogan.order('id');
            #     render json: {status: 'SUCCESS', message:'Loaded slogans', data: @slogans}, status: :ok
            # end

            # def show
            #     slogan = Slogan.find(params[:id])
            #     render json: {status: 'SUCCESS', message:'Loaded rider', data: slogan}, status: :ok
            # end

            def create
                slogan = Slogan.new(slogan_params)
                if slogan.save
                    render json: {status: 'SUCCESS', message:'Slogan saved', data: slogan}, status: :ok
                else
                    render json: {status: 'ERROR', message:'Slogan not saved', data: slogan.errors}, status: :unprocessable_entity
                end
            end

            private
            def slogan_params
                params.permit(:firstname, :lastname, :email, :slogan)
            end
        end
    end
end