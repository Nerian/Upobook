class ChatController < ApplicationController  

  def index
    @channels = Channel.order("name ASC")
    if id = session[:channel]
      @channel = Channel.find(id)
      @comment = Comment.new
    end
  end

end
