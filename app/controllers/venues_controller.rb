class VenuesController < ApplicationController



  #GET all the cities from the venue attributes??
  # cities = Venue.all.map do |venue|
  #   venue.city
  # end

  # cities.unique


  # GET /artworks
  def index
    # all the artworks
    @venues = Venue.all
    render json: @venues
  end

  # GET /artworks/:id
  def show
    # find one artwork by id
    @venue = Venue.find(params[:id])
    render json: @venue
  end

  # POST /artwork
  def create
    if Venue.find_by(name: venue_params[:name])
      render json: Venue.find_by(name: venue_params[:name])
    else
      @venue = Venue.new(venue_params)
      if @venue.save
        render json: @venue, status: :created
      else
        render json: @venure.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH /artworks/:id
  def update
    @venue = Venue.find(params[:id])
    if @venue.update(venue_params)
      head :no_content
    else
      render json: @venue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artworks/:id
  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy

    head :no_content
  end

  private
   def venue_params
    params.require(:venue)
      .permit(:name, :neighborhood, :street, :city, :state, :zip)
    end
end




