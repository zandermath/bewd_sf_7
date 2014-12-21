class ArtsController < ApplicationController
  def index
  end

  def new
    @art = Art.new #place that captures user input
  end

  def create
    @art = Art.new(art_params)
    if @art.save
      redirect_to arts_url
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

  def set_art
    @art = Art.find(params[:id])
  end

  def art_params
    params.require(:art).permit(:title, :available, :artist_id, :gallery_id, :price)
  end
end
