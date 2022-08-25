class PostsController < ApplicationController
  before_action :set_params, only: [:show, :edit, :update]

  def index
  end

  def new
    @post = Post.new
  end

  def show 

  end

  def edit
  end

  def create
    @post = Post.new(post_params.merge(user_id: session[:user_id]))
    if @post.save
      redirect_to dashboards_path, notice: "Create a new post successfully !"
    else
      redirect_to dashboards_path, alert: @post.errors.full_messages
    end
  end

  def update
    if @post.update(post_params)
      redirect_to dashboards_path, notice: "Update successfully !"
    else
      redirect_to dashboards_path, alert: @post.errors.full_messages
    end
  end

  def destroy
  end

  private

    def set_params
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body, :user_id)
    end
end
