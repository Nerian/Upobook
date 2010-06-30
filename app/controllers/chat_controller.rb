class ChatController < ApplicationController  

  def index
    @channels = Channel.all
    if id = session[:channel]
      @channel = Channel.find(id)
      @comment = Comment.new
    end
  end

end
