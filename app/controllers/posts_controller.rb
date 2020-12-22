class PostsController < ApplicationController
def index #index アクションを定義した
    #@post = Post.find(1)  # 1番目のレコードを@postに代入
    @posts = Post.all.order(id: "DESC") #すべてのレコードを@posts に代入する
end
#def new
#end
def create
  post = Post.create(content: params[:content], checked: false)
  render json:{ post: post }
end
end 