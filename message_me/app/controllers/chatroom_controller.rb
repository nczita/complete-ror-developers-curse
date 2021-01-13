class ChatroomController < ApplicationController

  # GET /chatroom
  def index
    @message = Message.new
    @messages = Message.last20
  end

end
