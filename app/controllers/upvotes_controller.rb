class UpvotesController < ApplicationController
  def create
    @item = Item.find(params[:upvote][:item_id])
    @item.upvotes.create!
    respond_to do |format|
      format.html { redirect_to items_path }
      format.js
    end
  end
end
