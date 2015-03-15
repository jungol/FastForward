class ListsController < ApplicationController
  def index
    if @tags = params[:tags]
      @temp_lists = List.tagged_with(@tags)
      @lists = @temp_lists.map{ |key,val| List.find_by_id(key) }
    else
      @lists = List.all
    end
    @checked_tags = Hash[(Tag.where(id: params[:tags])).collect { |tag| [tag.id, "true"]}]
    @tags = Tag.all
    respond_to do |format|
      format.html { }
      # format.js
    end
  end

  def show
    @list = List.find(params[:id])
    @items = @list.items
  end
end
