class UserListsController < ApplicationController
  def new
    @item = Item.find_by_id(item_id)
  end

  def create
    @user_list = UserList.new(user_list_params)
    current_user.lists.create!(@list)
    respond_to do |format|
      format.html { redirect_to root_url}
      format.js { @list }
    end
  end

  def destroy
  end

  def show
  end

  def index
    @user_lists = UserList.where(user_id: current_user.id)
    @lists = @user_lists.map {|s| s.list}
    @list = List.new
  end

  private

    def user_list_params
      params.require(:user_list).permit(
        :user_id,
        :list_id
      )
    end


end

