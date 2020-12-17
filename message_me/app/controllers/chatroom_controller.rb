class ChatroomController < ApplicationController

  # GET /chatroom
  def index
    @messages = Message.all
  end

end
