class Api::V1::PlayersController < ApplicationController
  before_action :set_player, only: [:show, :update, :destroy]
    # GET  /players by club
    def index
        @players = Player.find(club_id: params[:id])
        render json: @players
    end

    #GET api/v1/players/:id
    def show
        render json: @player, status: :ok
    end

    # PUT api/v1/players/:id
    def update
        if @player.update(post_params)
            render json: @player, status: :ok
        else
            render json: @player.errors, status: :updating_error
        end
    end

    # DELETE api/v1/players/:id
    def destroy
        @player.destroy
        # render json
    end


    ################################################################
    def set_player
        @player = Player.find(params[:id])
    end
    def post_params
        params.permit(:name, :age, :position, :foot, :country, :club_id)
    end

end