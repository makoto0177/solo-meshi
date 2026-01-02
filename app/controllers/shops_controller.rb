class ShopsController < ApplicationController
  before_action :set_shop, only: [:show]

  def index
    @shops = Shop.all.order(created_at: :desc)
  end

  def show
    @posts = @shop.posts.includes(:user).order(created_at: :desc)
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
