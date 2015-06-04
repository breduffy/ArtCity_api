class ArtworksController < ApplicationController

  # GET /artworks
  def index
    # all the artworks
    @artworks = Artwork.all
    render json: @artworks
  end

  # GET /artworks/:id
  def show
    # find one artwork by id
    @artwork = Artwork.find(params[:id])
    render json: @artwork
  end

  # POST /artwork
  def create
    @venue = Artwork.new(create_artwork_params)
    if @artwork.save
      render json: @artwork, status: :created
    else
      render json: @artwork.errors, status: :unprocessable_entity
     end
  end

  # PATCH /artworks/:id
  def update
    @artwork = Artwork.find(params[:id])
    if @artork.update(artwork_params)
      head :no_content
    else
      render json: @artwork.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artworks/:id
  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy

    head :no_content
  end

  private
   def artwork_params
    params.require(:movie)
      .permit(:title, :artist, :venue, :neighborhood, :city, :description, :closing_date)
  end

  def create_artwork_params
    params.permit(:title, :artist, :venue, :neighborhood, :city, :description, :closing_date, :image)
  end
end

