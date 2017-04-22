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

  def delete
  end
  def update
  end

  def new
  @picture = Picture.new
  end

  def gallery
  end 

  private

  def picture_params
    params.require(:picture).permit(:image, :caption)
  end

end
