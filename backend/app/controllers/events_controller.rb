class EventsController < ApplicationController
  def index
    render json: Event.all
  end

  def show
    # 指定したidのイベントデータを返す
    render json: Event.find(params[:id])
  end

  def create
    event = Event.new(event_params)
    if event.save
      render json: event
    else
      render json: event.errors, status: 422
    end

end
