class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    if params[:search]
      @events = Event.where(name: params[:search])
    else
      @events = Event.all
    end
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @all_participations = Participation.where("event_id = ?", @event.id)
    @host_participation = @all_participations.first
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @host = false
    if @current_user.id == @host_participation.user_id
      @host = true
    end

    @participating_users = []
    @all_participations.each do |participation|
      @participating_users << User.find(participation.user_id)
    end

    @in_event = @current_user.in? (@participating_users)
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end


  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @participation = @event.participations.build(:is_host => true, :user=>@current_user)
    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }

        #Create Participation

      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :sport, :event_date, :start_time, :end_time, :frequency, :place, :description, :all_can_invite)
    end
end
