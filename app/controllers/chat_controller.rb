class ChatController < ApplicationController  

  def index
    @channels = Channel.all    
  end

end
