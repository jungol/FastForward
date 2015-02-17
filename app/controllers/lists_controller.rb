class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])
    @items = @list.items
  end

  def index
    @lists = List.all
  end
end
