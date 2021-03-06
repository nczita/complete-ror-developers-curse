class MessagesController < ApplicationController
  before_action :require_user

  # POST /message
  def create
    @message = current_user.messages.build(message_params)
    if !@message.save
      flash.alert = "Message couldn't be added ..."
    end
    ActionCable.server.broadcast "chatroom_channel", mod_message: message_render(@message)
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    render(partial: 'message', locals: {message: message})
  end

end
