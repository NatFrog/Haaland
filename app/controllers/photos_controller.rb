class PhotosController < ApplicationController
  before_action :set_photo, only: %i[ show edit update destroy ]

  def index
    @photos = Photo.recent.with_attached_image
  end

  def show
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to @photo, notice: "Photo shared with the Haaland community."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @photo.update(photo_params)
      redirect_to @photo, notice: "Photo updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @photo.destroy!
    redirect_to photos_path, notice: "Photo removed.", status: :see_other
  end

  private

  def set_photo
    @photo = Photo.find(params.expect(:id))
  end

  def photo_params
    params.expect(photo: [ :caption, :author_name, :image ])
  end
end
