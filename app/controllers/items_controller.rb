class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)

    if @item.save
      flash[:notice] = "To-Do Item Saved"
      redirect_to root_path 
    else
      flash.now[:alert] = "There was error saving your To-Do Item, please try again."
    end
  end

  private

  def item_params
    params.require(:item).permit(:id, :name, :user_id)
  end

end
