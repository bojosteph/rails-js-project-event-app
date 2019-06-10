class EventsController < ApplicationController
  def index
    @events = Event.all
    # render json: @events
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @events }
    end
  end

  def show
    @event = Event.find(params[:id])
    # render json: @event
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @event }
    end
  end

  def new
    @event = Event.new
  end

  def create 
    @event = Event.create(events_params)
    if @event.save
      redirect_to @event
    else
      render :end 
    end
  end

  def edit
    @event = Event.find(params[:id])
  end


  private 

  def events_params
    params.require(:event).permit(:name, :location, :description, :start_date, :end_date)
  end
end
