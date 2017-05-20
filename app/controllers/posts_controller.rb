class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts_free=@posts.where(category_id:1)
    @posts_info=@posts.where(category_id:2)
    @posts_question=@posts.where(category_id:3)
    @posts_anonymous=@posts.where(category_id:4)
    @posts_lost=@posts.where(category_id:5)
    @posts_used=@posts.where(category_id:6)
    @posts_notice=@posts.where(category_id:7)
    @posts_evaluation=@posts.where(category_id:8)
    
  end

  def new
    @post = Post.new
    @categories=Category.all

  end

  def create
    post = Post.new(post_params)
    post.save

    redirect_to posts_path
  end

  def show
    @post=Post.find(params[:id])
  end
  
  def edit
    @post=Post.find(params[:id])
  end

  def update
    @post=Post.find(params[:id])
    @post.update(post_params)
    
    redirect_to @post
  end
  
   def destroy
    @post = Post.find(params[:id])
    @post.delete

    redirect_to posts_path
   end
    
  def post_params
    params.require(:post).permit(:title, :content, :category_id)
  end
end
