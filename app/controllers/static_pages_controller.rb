class StaticPagesController < ApplicationController
  def home
    # @items_by_month = Item.all.group_by { |t| t.created_at.beginning_of_month}
    if user_signed_in?
      @items = Item.joins(:tags).where(tags: {id: current_user.tags}).all.uniq
    else
      @items = Item.all
    end
    @feed_groups = @items.group_by {|t| [t.created_at_date.to_date.beginning_of_month, t.created_at_date]}.sort.reverse
    @feed_groups = @feed_groups.paginate(page: params[:page], per_page: 2)
  end
end


