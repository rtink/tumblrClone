class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  
  def index
    @posts = Post.all.order('created_at DESC')
  end
  
  def new
    @post = Post.new
  end
  
  def show
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] =  "Post is live!" 
      redirect_to @post
    else
      flash[:danger] = "Post did not save!"
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @post.update(post_params)
      flash[:warning] = "Post was updated!"
      redirect_to @post
    else
      flash[:danger] = "Post did not updated!"
      render 'edit'
    end
  end
  
  def destroy
    @post.destroy
    flash[:danger] = "Post was deleted!"
    redirect_to root_path
  end
  
  private
  
  def set_post
    @post = Post.find(params[:id])
  end
  
  def post_params
    params.require(:post).permit(:title, :body)
  end
  
end
