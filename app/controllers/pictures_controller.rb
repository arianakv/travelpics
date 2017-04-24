class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  def index
    @page = (params[:page]|| 1).to_i
    skip = (@page - 1) * 2
    @pictures = Picture.all.order(created_at: :desc).limit(2).offset(skip)
  end

  def show

  end

  def create
    @picture = Picture.create(picture_params)
    redirect_to pictures_path
  end

  def edit
  end

  def destroy
    @pictures.destroy
    redirect_to root_path
  end

  def update
    if @pictures.update(picture_params)
      redirect_to(picture_path(@pictures))
    else
      render :edit
    end
  end

  def new
    @picture = Picture.new
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :caption)
  end

  def set_picture
    @pictures = Picture.find(params[:id])
  end

end
