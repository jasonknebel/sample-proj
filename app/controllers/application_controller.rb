class ApplicationController < ActionController::Base
  def home
    @items = Item.all
    @list = List.where(user_id: current_user.id, has_paid: false).first
  end
end
