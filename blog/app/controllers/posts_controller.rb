class PostsController < ApplicationController
  before_action :set_post, except: [:index, :new, :create]
  before_action :authenticate_user!, only:[:new, :show]

  def index
    @posts = Post.all
  end
  def show
 
    end

  def new
    @post = Post.new
  end

  def edit
  end  
  def create
    @post = Post.new(post_params)
      if @post.save
       redirect_to @post, notice: 'Post was successfully created.' 
      else
        render :new
    end
  end
  def update
  
      if @post.update(post_params)
       redirect_to @post, notice: 'Post was successfully updated.' 
      else
      render :edit 
      end
    
  end
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:name, :description, :ingredans, :price, :genger, :image)
    end
end
