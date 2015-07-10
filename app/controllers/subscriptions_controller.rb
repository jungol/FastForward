class SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  def create
    @list = List.find(params[:subscription][:list_id])
    current_user.follow!(@list)
    respond_to do |format|
      format.html { redirect_to root_url}
      format.js { @list }
    end
  end

  def destroy
    @list = Subscription.find(params[:id]).list
    current_user.unfollow!(@list)
    respond_to do |format|
      format.html {redirect_to root_url}
      format.js {@list}
    end
  end

  def index
    @subscriptions = Subscription.where(user_id: current_user.id)
    @lists = @subscriptions.map {|s| s.list}
  end

end
