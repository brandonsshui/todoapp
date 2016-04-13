class ItemsController < ApplicationController
  protect_from_forgery
  
  
  def index
    @items = Item.all
  end

  def create
    @item = Item.new(item_create_params)
    redirect_to items_path
  end
  
  def update
    Item.find(params[:id]).update!(item_update_params)
    redirect_to items_path
  end




  private
  
  def item_create_params
    params.require(:item).permit(:task)
  end
  
  def item_update_params
    params.require(:item).permit(:task, :complete, :deleted)
  end
  
end