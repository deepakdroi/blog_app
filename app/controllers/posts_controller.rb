class PostsController < ApplicationController

	def index
		@posts = Post.all.order('created_at DESC') # gets all posts in descending order
	end

# used to create new post and its view contains form for the new post
  def new
    @post = Post.new 	
  end

# gets the params and saves it to the post table redirects it to the post where it shows the post which is posted
  def create
  	@post =Post.new(post_params)
  	if @post.save
  	  redirect_to @post
  	else
  		render 'new'
  	end
  end 

# shows the post using the post_id
  def show
    @post = Post.find(params[:id])
  end

  private

# permiting the values to be asigned to the mentioned columns
  def post_params
   params.require(:post).permit(:title, :content)
  end 
end


