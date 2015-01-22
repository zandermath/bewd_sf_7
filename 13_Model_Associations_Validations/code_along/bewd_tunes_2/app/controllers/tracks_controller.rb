class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
    @track = get_track
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to track_path(@track)
    else
      render :new
    end
  end

  def edit
    @track = get_track
  end

  def update
    @track = get_track
    if @track.update(track_params)
      redirect_to track_path(@track)
    else
      render :edit
    end
  end

  def show
    @track = get_track
  end


  def destroy
    @track = get_track
    @track.delete
    redirect_to tracks_path
  end

  private 

  def track_params
    params.require(:track).permit(:title, :track_link, :artist_id)
  end

  def get_track
    @track = Track.find(params[:id])
  end
end
