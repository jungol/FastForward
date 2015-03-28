class ListsController < ApplicationController
  def index
    # Tagging system for later
    # if @tags = params[:tags]
    #   @lists = List.get_lists_with(@tags)
    # else
    #   @lists = List.where(published: true)
    # end
    
    # @checked_tags = Hash[Tag.hash_of_checked_tags(@tags)]
    # @tags = Tag.all

    @tag = Tag.find_by_name(params[:topic])
    @lists = @tag.lists.where(published: true)
    if @tag.name == 'Education'
      @tag_image = 'education.jpg'
    else
      @tag_image = 'microfinance.png'
    end

  end

  def show
    @list = List.find(params[:id])
    # @list.view_count = @list.view_count + 1
    # @list.save
    @items = @list.items
  end


end

