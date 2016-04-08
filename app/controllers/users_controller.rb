class UsersController < ApplicationController

  def show
    @item = Item.new
    @items = Item.where(user_id: current_user.id)
  end

end
