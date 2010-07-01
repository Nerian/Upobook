class ChatController < ApplicationController  

  def index
    @channels = Channel.order("name ASC")
    if id = session[:channel]
      @channel = Channel.find(id)
      
      @comments = @channel.comments_since_user_conected(session[:user_id])
      @comment = Comment.new
    end
  end
end
