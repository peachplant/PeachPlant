class ListingImagesController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :edit, :update, :destroy]

  # GET /listing_images
  # GET /listing_images.json
  def index
    @listing_images = ListingImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @listing_images }
    end
  end

  # GET /listing_images/1
  # GET /listing_images/1.json
  def show
    @listing_image = ListingImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @listing_image }
    end
  end

  def show_for_listing
    @listing_images = ListingImage.find_all_by_listing_id(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @listing_images }
    end
  end

  # GET /listing_images/new
  # GET /listing_images/new.json
  def new
    @listing_image = ListingImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @listing_image }
    end
  end

  # GET /listing_images/1/edit
  def edit
    @listing_image = ListingImage.find(params[:id])
  end

  # POST /listing_images
  # POST /listing_images.json
  def create
    @listing_image = ListingImage.new(params[:listing_image])
    @listing_image.user = current_user

    respond_to do |format|
      if @listing_image.save
        format.html { redirect_to @listing_image, notice: 'ListingImage was successfully created.' }
        format.json { render json: @listing_image, status: :created, location: @listing_image }
      else
        format.html { render action: "new" }
        format.json { render json: @listing_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /listing_images/1
  # PUT /listing_images/1.json
  def update
    @listing_image = ListingImage.find(params[:id])

    respond_to do |format|
      if @listing_image.update_attributes(params[:listing_image])
        format.html { redirect_to @listing_image, notice: 'ListingImage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @listing_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listing_images/1
  # DELETE /listing_images/1.json
  def destroy
    @listing_image = ListingImage.find(params[:id])
    @listing_image.destroy

    respond_to do |format|
      format.html { redirect_to listing_images_url }
      format.json { head :no_content }
    end
  end
end
