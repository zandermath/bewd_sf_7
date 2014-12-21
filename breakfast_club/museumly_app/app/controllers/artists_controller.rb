class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def edit
  end

  def update
  end

  def new
    @artist = Artist.new 
  end

  def show
    @artist = set_artist
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to artists_url
    else
      render :new
    end
  end


  private 

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :age, :art_category, :art_image)
  end

end
