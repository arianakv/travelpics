class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]


  def index
    @page = params[:page].to_i || 1
    skip = (@page - 1) * 5
    @pictures = Picture.all.order(created_at: :desc).limit(5).offset(skip)
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

  def liked
    @picture = Picture.find(params[:id])
    @picture.likes += 1
    if @picture.save
      render :nothing => true, :status => 200
    else
      render :nothing => true, :status => 500
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:image, :caption)
  end

  def set_picture
    @pictures = Picture.find(params[:id])
  end

end
