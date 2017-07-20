class EventsController < ApplicationController
    def index
        @events = Event.all
    end

    def new
        @event = Event.new
    end

    def create
        @event = User.find(session[:user_id]).event.new(event_params)
        if @event.save
        redirect_to "/events", notice: "You have successfully created an Event!"
        else
        flash[:errors] = @event.errors.full_messages
        redirect_to "/events"
    end
  end

  private
    def event_params
       params.require(:event).permit(:name, :date, :city, :state, :host, :user_id)
    end
end
