class ListsController < ApplicationController
  def index
    
  end

  def create
    @item = Item.find(params[:item].to_i)
    check_if_list_exists
    ListItem.create(list_id: @list.id, item_id: @item.id)
    update_total(@item)
    flash[:notice] = 'The item has been added to your cart'
    redirect_to root_path
  end

  private

  def check_if_list_exists
    @list = List.where(user_id: current_user.id, has_paid: false).first
    if !@list.present?
      @list = List.create(user_id: current_user.id, has_paid: false, total_amount: 0)
    end
  end

  def update_total(item)
    new_total = @list.total_amount + item.price
    @list.update_attributes(total_amount: new_total)
  end

end
