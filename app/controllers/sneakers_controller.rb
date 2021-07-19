class SneakersController < ApplicationController
  def index
    # @sneaker = Sneaker.all
    @sneakers = Sneaker.order('created_at DESC')
  end

  def new
    @sneaker = Sneaker.new
  end

  def create
    @sneaker = Sneaker.new(sneaker_params)
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
