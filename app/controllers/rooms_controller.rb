class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render json: @rooms
  end

  def show
    render json: Room.all.find_by_id(params[:id])
  end

  def update
    Room.all.find_by_id(params[:id]).update(room_params)
    render json: Room.all.find_by_id(params[:id])
  end

   private

  def room_params
    params.permit(:adult, :children)
  end

  def find_room
    @room = Room.find(params[:id])
  end

end
