class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items
  end

  def destroy
    session.delete :order_id
    redirect_to cart_path
  end
end
