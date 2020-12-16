class ChatroomController < ApplicationController

  # GET /chatroom
  def index
    @messages = Message.all
    @users = User.all
  end

end
