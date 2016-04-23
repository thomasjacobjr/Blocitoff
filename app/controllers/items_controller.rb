class ItemsController < ApplicationController

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      flash[:notice] = "To-Do Item Saved"
      redirect_to root_path
    else
      flash[:alert] = "There was error saving your To-Do Item, please try again."
      redirect_to root_path
    end
  end

  def destroy
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "Item successfully deleted."
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error, you dick."
      render :show
    end
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

end
