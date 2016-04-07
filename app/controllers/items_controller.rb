class ItemsController < ApplicationController
  
  def index
    @items = Item.all
  end

  def create
    Item.create(item_create_params)
    redirect_to items_path
  end
  
  def update
    Item.find(params[:id]).update!(item_update_params)
    redirect_to items_path
  end

  private
  
  def item_create_params
    params.require(:item).permit(:item)
  end
  
  def item_update_params
    params.require(:item).permit(:item, :complete, :deleted)
  end
  
end