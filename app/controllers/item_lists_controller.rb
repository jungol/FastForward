class ItemListsController < ApplicationController
  def new
    @item = Item.find_by_id(params[:item_id])
    @user_lists = UserList.where(user_id: current_user.id)
    @lists = @user_lists.map {|s| s.list}
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @item_list = ItemList.new(item_lists_params)
    @item_list.save!

    redirect_to root_url
  end

  private 

    def item_lists_params
      params.require(:item_list).permit(
          :item_id,
          :list_id
        )
    end

end







