class StaticPagesController < ApplicationController
  def home
    @items = Item.top_votes
    @upvote = Upvote.new
    @email_signup ||= EmailSignup.new
  end

end
