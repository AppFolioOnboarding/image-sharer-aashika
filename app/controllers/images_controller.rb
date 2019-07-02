class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to @image, alert: 'Image created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @images = Image.all.order(created_at: :desc)
  end

  def show
    @image = Image.find(params[:id])
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path
  end

  private

  def image_params
    params.require(:image).permit(:url)
  end
end
