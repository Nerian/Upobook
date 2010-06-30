class ChatController < ApplicationController  

  def index
    @channels = Channel.order("name ASC")
    if id = session[:channel]
      @channel = Channel.find(id)
      @comments = @channel.comments.where(:created_at => (User.find(session[:user_id]).channel_users.first.created_at)..(Time.now))
      @comment = Comment.new
    end
  end

end
