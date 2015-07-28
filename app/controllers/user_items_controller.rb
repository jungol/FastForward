class UserItemsController < ApplicationController
  def create
    @item = Item.find(params[:user_item][:item_id])
    current_user.user_items.create!(item_id: @item.id)
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { @item }
    end
  end

  def destroy
    @item = UserItem.find(params[:id]).item
    current_user.user_items.find_by(item_id: @item.id).destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { @item }
    end
  end

  def index 
    @user_items = UserItem.where(user_id: current_user.id)
    @items = @user_items.map {|s| s.item}
  end
  
end
