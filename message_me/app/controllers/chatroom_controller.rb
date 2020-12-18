class ChatroomController < ApplicationController

  # GET /chatroom
  def index
    @message = Message.new
    @messages = Message.all
  end

end
