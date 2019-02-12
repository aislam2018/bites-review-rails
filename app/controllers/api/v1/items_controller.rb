class Api::V1::ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items
  end
  def show
    @item = Item.find(item_params[:id])
    render json: @item
  end

  private

  def item_params
    params.permit(:id);
  end
end
