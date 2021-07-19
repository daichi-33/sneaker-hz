class SneakersController < ApplicationController
  def index
    @sneakers = Sneaker.order('created_at DESC')
  end

  def new
  end

  def create
    @sneaker = sneaker.new(sneaker_params)
    if @sneaker.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def sneaker_params
    params.require(:sneaker).permit(:title, :image, :detail).merge(user_id: current_user.id)
  end
end
