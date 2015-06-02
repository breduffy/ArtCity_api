class TagsController < ApplicationController

  # GET /artworks
  def index
    # all the artworks
    @tags = Tag.all
    render json: @tags
  end

  # GET /artworks/:id
  def show
    # find one artwork by id
    @tag = Tag.find(params[:id])
    render json: @tag
  end

  # POST /artwork
  def create
    @tag = Tag.new(venue_params)
    if @tag.save
      render json: @tag, status: :created, location: tags_url
    else
      render json: @tag.errors, status: :unprocessable_entity
     end
  end

  # PATCH /artworks/:id
  def update
    @tag = Tag.find(params[:id])
    if @tag.update(tag_params)
      head :no_content
    else
      render json: @tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artworks/:id
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    head :no_content
  end

  private
   def tag_params
    params.require(:movie)
      .permit(:name, :neighborhood, :street, :city, :state, :zip)
  end
end


