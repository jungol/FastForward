class StaticPagesController < ApplicationController
  def home
    @feed_groups = Item.all.group_by(&:created_at_date).sort.reverse.paginate(page: params[:page], per_page: 2)
  end
end
