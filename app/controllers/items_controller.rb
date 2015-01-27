class ItemsController < ApplicationController
  def index
    @items = Item.all
    @email_signup = EmailSignup.new
  end
end

