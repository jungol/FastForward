class ListsController < ApplicationController
  def index
    
    if @tags = params[:tags]
      @lists = List.get_lists_with(@tags)
    else
      # @base_tags = []
      # @base_tags << Tag.find_by_name("Finance")
      # @base_tags << Tag.find_by_name("Education")
      # @lists = List.
      @lists = List.all
    end
    
    @checked_tags = Hash[Tag.hash_of_checked_tags(@tags)]
    @tags = Tag.all

  end

  def show
    @list = List.find(params[:id])
    @items = @list.items
  end


end

