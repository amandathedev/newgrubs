class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @order_items = current_order.order_items
  end

  def confirmation
    @order = Order.find(params[:id])
    @order_items = current_order.order_items
  end

end
