class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      flash[:notice] = "Meow."
      redirect_to kittens_path
    else
      render :new
    end
  end

  private

  def kitten_params
    params.require(:kitten).permit(:name, :image)
  end
end
