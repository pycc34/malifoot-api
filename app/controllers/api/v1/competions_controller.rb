class Api::V1::CompetionsController < ApplicationController
before_action :set_club, only: [:show, :update, :destroy]

# GET api/v1/clubs
def index
    @clubs = Competion.all 
    render json: @clubs, status: :ok
end

# GET api/v1/clubs/:id
def show
    render json: @competion
end

# PUT api/v1/players/:id
def update
    if @competion.update(post_params)
        render json: @competion, status: :ok
    else
        render json @club.errors, status: :update_error
    end
end

# GET api/v1/clubs/:id
def destroy # add delete with foreign keys after
    if @competion.destroy
        @competion = Competion.all
        render json: @competion, status: :delete_succes
    else
        @competion = Competion.all
        render json: @competion, status: :delete_error
    end

end

################################################################
def set_club
    @competion = Competion.find(params[:id])
end
def post_params
    params.permit(:name)
end
end