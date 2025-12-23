class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:edit, :update, :destroy]
  before_action :authorize_post!, only: [:edit, :update, :destroy]

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

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path, notice: "投稿を更新しました"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path, notice: "投稿を削除しました"
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def authorize_post!
    return if @post.user_id == current_user.id

    redirect_to root_path, alert: "権限がありません"
  end

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
