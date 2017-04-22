class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
  @pictures = Picture.find(params[:id])
  end

  def create
    @picture = Picture.create(picture_params)
      redirect_to pictures_path
  end

  def edit
    @pictures = Picture.find(params[:id])
  end

  def delete
  end

  def update
    @pictures = Picture.find(params[:id])
    @pictures.update(picture_params)
    redirect_to(picture_path(@pictures))
  end

  def new
  @picture = Picture.new
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :caption)
  end

end
