class StaticPagesController < ApplicationController
  def home
    # @items = Item.top_votes
    @lists = List.all
    @upvote = Upvote.new
    @email_signup ||= EmailSignup.new
  end

end
