class UpvotesController < ApplicationController
  def create
    @list = List.find(params[:upvote][:list_id])
    @list.upvotes.create!
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end
end
