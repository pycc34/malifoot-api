class Api::V1::ClubsController < ApplicationController
before_action :set_club, only: [:show, :update, :destroy]

# GET api/v1/clubs
def index
    @clubs = Club.all 
    render json: @clubs, status: :ok
end

# GET api/v1/clubs/:id
def show
    render json: @club
end

# PUT api/v1/players/:id
def update
    if club.update(post_params)
        render json: @club, status: :ok
    else
        render json @club.errors, status: :update_error
    end
end

# GET api/v1/clubs/:id
def destroy # add delete with foreign keys after
    if @club.destroy
        @club = Club.all
        render json: @club, status: :delete_succes
    else
        @club = Club.all
        render json: @club, status: :delete_error
    end

end
################################################################
def set_club
    @club = Club.find(params[:id])
end
def post_params
    params.permit(:name, :logo, :description, :stadium)
end
end