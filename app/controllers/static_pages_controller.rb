class StaticPagesController < ApplicationController
  def home
    @items = Item.all
    @upvote = Upvote.new
    @email_signup = EmailSignup.new
  end

end
