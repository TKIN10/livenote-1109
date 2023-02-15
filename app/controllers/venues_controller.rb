class VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.create(venue_params)
    if @venue.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
    if @venue.update(venue_params)
      redirect_to venue_path(@venue)
    else
      render :edit
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    if @venue.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:title, :image).merge(user_id: current_user.id)
  end

end
