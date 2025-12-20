class ShopsController < ApplicationController
  def index
    @shops = Shop.all.order(created_at: :desc)
  end

  def show
  end
end
