#接下來建立 Controller

class PostsController < ApplicationController
  def index
    #我要去 Post model，也就是 posts table 找出每一筆資料，存進 @posts 變數
    @posts = Post.all
  end

	def show
    #Rails 會把用戶所有傳進來的參數打包成一個叫 params 的 Hash
    #find 代表搜尋某一比資料，而 params[:id] 代表用戶想查詢的資料 id
    @post = Post.find(params[:id])
  end

  def new
  	@post=Post.new
  end
   def create
  	post=Post.new(post_params) #new object

  	if post.save!
  		redirect_to posts_path
  	else
  		render :new
  	end
  end
  
  private

  def post_params
  	binding.pry
  	params.require(:post).permit(:content)
  end
end