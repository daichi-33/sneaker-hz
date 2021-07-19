class SneakersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_sneaker, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, only: [:edit, :update, :destroy]

  def index
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

  def show
  end

  def edit
  end

  def update
    if @sneaker.update(sneaker_params)
      redirect_to sneaker_path(@sneaker)
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path if @sneaker.destroy
  end

  private
  def sneaker_params
    params.require(:sneaker).permit(:title, :image, :detail).merge(user_id: current_user.id)
  end

  def set_sneaker
    @sneaker = Sneaker.find(params[:id])
  end

  def move_to_index
    redirect_to root_path if current_user.id != @sneaker.user_id
  end

end
