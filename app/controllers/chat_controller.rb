class ChatController < ApplicationController      

  def index
    @channels = Channel.order("name ASC")
    if id = session[:channel]
      @channel = Channel.find(id)      
      @comments = @channel.comments_since_user_conected(session[:user_id])
      @comment = Comment.new
    end    
  end

  def update    
    @channel = Channel.find(session[:channel])
    @comments = @channel.comments_since_user_conected(session[:user_id])
    render(@comments)
  end

  def updatepeopleon
    @channel = Channel.find(session[:channel])
    @comments = @channel.comments_since_user_conected(session[:user_id])
    render(@channel.users)

  end
  
end

