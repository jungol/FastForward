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

  
end
