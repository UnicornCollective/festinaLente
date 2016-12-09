class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :sign_in


  def index
    @events = Event.where(start: params[:start]..params[:end])
  end

  def show
  end

  def new
    @event = @current_user.events.build
    @event.save
  end

  def edit
  end

  def create
    @event = @current_user.events.build
    @event.save
  end

  def update
    @event.update(event_params)
  end

  def destroy
    @event.destroy
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :date_range, :start, :end, :color, :user_id, :phase, :description)
    end

   def sign_in
    if @current_user.nil?
      redirect_to sign_in_path, alert: "Please Sign In"
    end
  end
end
