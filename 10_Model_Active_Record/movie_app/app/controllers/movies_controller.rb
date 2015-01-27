class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
  end

  def show
    @movie = get_movie
  end

  def new
    @movie = Movie.new
  end

<<<<<<< HEAD
  def create
    @movie = Movie.new(movies_params)
    @movie.save #active record_method 
=======
  def create 
    @movie = Movie.new(movies_params)
    @movie.save #active record_method
>>>>>>> d5b5c7d2525c81cda47238a8c63fd5ee5bb6bb0f
    redirect_to movie_path(@movie)
  end

  def edit
    @movie = get_movie
  end

  def update
  end


  def destroy
    @movie = get_movie
    @movie.destroy
    redirect_to movies_path
  end


  private

  # #declares what can be written & read 
  def movies_params
    params.require(:movie).permit(:title, :description, :year_released)
  end

  def get_movie
    Movie.find(params[:id])
  end


  private

  #declares what can be written & read 
  def movies_params
    params.require(:movie).permit(:title, :description, :year_released)
  end

  def get_movie
    Movie.find(params[:id])
  end

end
