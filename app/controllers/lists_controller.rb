class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    if @list.save!
      print @list
      redirect_to list_path(@list), notice: "list was created"
    else
      render 'new', notice: "couldnot create your list"
    end

  end

  def new
    @list = List.new
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
