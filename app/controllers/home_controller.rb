class HomeController < ApplicationController
  def index
    
    @posts = Post.all

  end

  def write
#    post = Post.new
#    post.title = params[:title]
#    post.content = params[:content]    
#    post.save

#   Post.create(title: params[:title], content: params[:content])

    @howmany = params[:content]
    
    @plength = @howmany.size
    @pwords = @howmany.split.size

    post = Post.new(title: params[:title], content: params[:content], post_length: @plength, post_words: @pwords)
    
    if post.save
      redirect_to "/home/index"
    else
      render :text => post.errors.messages[:title].first
    end
    
  end

  def reply_write

    reply = Reply.new
    reply.content = params[:comment]
    reply.post_id = params[:postid]
    reply.save
    
    redirect_to "/home/index"
    
  end

end
