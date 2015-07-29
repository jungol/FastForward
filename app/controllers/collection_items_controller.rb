class CollectionItemsController < ApplicationController
  include ApplicationHelper
  before_action :signed_in_user, only: [:new, :create]

  def new
    @item = Item.find(params[:item_id])
    @collections = current_user.collections
    @collection_item = CollectionItem.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @collection_item = CollectionItem.new(collection_item_params)
    @collection = Collection.find(@collection_item.collection_id)
    if @collection_item.save
      flash[:success] = "Your article was successfully added to '#{@collection.title}'"
    end
    redirect_to root_url
  end

  private
    def collection_item_params
      params.require(:collection_item).permit(
          :item_id,
          :collection_id
        )
    end
end
