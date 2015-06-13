class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])

    
    @lists = @collection.lists
    @collection.children.each do |child|
      @lists << child.lists
    @lists = @lists.uniq
    end
  end

  def new
    @collection = Collection.new
  end
  
  def create
    @collection = Collection.new(collection_params)
    if @collection.save
      redirect_to @collection
    else
      render 'new'
    end
  end

  private

    def collection_params
      params.require(:collection).permit(
        :name,
        :parent_id
      )
    end
end
