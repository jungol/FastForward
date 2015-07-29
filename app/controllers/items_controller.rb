class ItemsController < ApplicationController
  def new
  end

  def create
  end

  def show
    @item = Item.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
end
