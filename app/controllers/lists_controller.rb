class ListsController < ApplicationController
  def index
    
    if @tags = params[:tags]
      @lists = List.get_lists_with(@tags)
    else
      @lists = List.where(published: true)
    end
    
    @checked_tags = Hash[Tag.hash_of_checked_tags(@tags)]
    @tags = Tag.all

  end

  def show
    @list = List.find(params[:id])
    @list.view_count = @list.view_count + 1
    @list.save
    @items = @list.items
  end


end

