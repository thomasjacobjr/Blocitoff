class ItemsController < ApplicationController

  def create
    @item = Item.new(user_id: current_user.id, name: "Lorbo")
  end

end
