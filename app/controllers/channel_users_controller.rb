class ChannelUsersController < ApplicationController

  def create
    User.find(session[:user_id]).channel_users.destroy_all
    if channel_user = ChannelUser.create(:channel_id=>params[:channel], :user_id=>session[:user_id])
      session[:channel] = channel_user.channel_id
      redirect_to chat_index_path
    else
      redirect_to chat_index_path, :notice=>"No fue posible unirse al canal "
    end
  end

  def destroy
    User.find(session[:user_id]).channel_users.destroy_all
    redirect_to chat_index_path, :alert=>"Saliste del canal"
  end
end
