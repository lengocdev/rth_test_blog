class PostsController < ApplicationController
  before_action :set_post, only: %i[edit update show destroy]
  
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    # render plain: params[:post].inspect
    @post = Post.new(post_params)
    @post.user = User.first
    if @post.save
      flash[:success] = 'Post was successfully created'
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def update
    # @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = 'Post was updated'
      redirect_to post_path(@post)
    else
      flash[:success] = 'Post was not updated'
      render 'edit'
    end
  end

  def destroy
    # @post = Post.find(params[:id])
    @post.destroy
    flash[:success] = 'post was deleted'
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
