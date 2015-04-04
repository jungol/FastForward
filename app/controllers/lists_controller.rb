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
    # don't forget to fix this so it just does this for admins
    @lists = @tag.lists
    if @tag.name == 'Education'
      @tag_image = 'education.jpg'
    else
      @tag_image = 'microfinance.png'
    end

  end

  def show
    @list = List.find(params[:id])
    @items = @list.items
  end

  def new
    @list = List.new
    @tags = Tag.all
  end

  def create
    @list = List.new(list_params)
    if @list.save    
      flash[:success] = "List created!"
      redirect_to @list
    else
      render 'new'
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(list_params)
      flash[:success] = "List updated"
      redirect_to @list
    else
      render 'edit'
    end
  end

  private
  
    def list_params
      params.require(:list).permit(
        :title, 
        :published, 
        :description,
        :tag_ids => [], 
        :items_attributes => 
          [:id, :title, :author, :description, :url]
      )
    end

end
