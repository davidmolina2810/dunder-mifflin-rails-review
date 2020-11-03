class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    @dogs = @dogs.sort{|dog1, dog2| dog1.employees.count <=> dog2.employees.count}.reverse
  end

  def show
    @dog = Dog.find_by(id: params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :age, :breed)
  end

end
