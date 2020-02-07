class HomeController < ApplicationController
  def index
    if current_user
      @items = current_user.items.all
      @tags = Thetag.where(user_id: current_user.id).all
      @tag_count = Thetag.count
    end
  end
end