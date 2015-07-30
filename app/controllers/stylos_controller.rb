class StylosController < ApplicationController
  before_action :find_stylo, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @stylos = Stylo.all.order("created_at DESC")
  end

  def show
  end

  def new
    @stylo = current_user.stylos.build
  end

  def create
    @stylo = current_user.stylos.build(stylo_params)

    if @stylo.save
      redirect_to @stylo, notice: "Stylo was successfully created"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @stylo.update(stylo_params)
      redirect_to @stylo, notice: "Stylo was successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    @stylo.destroy
    redirect_to root_path
  end

  def upvote
    @stylo.upvote_by current_user
    redirect_to :back
  end

  private

  def stylo_params
    params.require(:stylo).permit(:title, :description, :photo)
  end

  def find_stylo
    @stylo = Stylo.find(params[:id])
  end

end
