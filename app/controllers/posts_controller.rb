class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.shop = Shop.first

    if @post.save
      redirect_to root_path, notice: "投稿を作成しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(
      :visited_at,
      :rating,
      :solo_customer_level,
      :casual_level,
      :noise_level,
      :counter_seat,
      :crowdedness_level,
      :comment
    )
  end
end
