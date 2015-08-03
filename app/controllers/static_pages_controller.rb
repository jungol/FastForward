class StaticPagesController < ApplicationController
  def home
    # @items_by_month = Item.all.group_by { |t| t.created_at.beginning_of_month}
    @feed_groups = Item.all.group_by {|t| [t.created_at_date.to_date.beginning_of_month, t.created_at_date]}.sort.reverse
    @feed_groups = @feed_groups.paginate(page: params[:page], per_page: 2)
  end
end


