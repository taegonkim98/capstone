class MessagesController < ApplicationController
  def index
    messages = Message.where(group_id: params[:group_id])
    render json: messages
  end

  def create
    message = Message.new(
      user_id: current_user.id,
      group_id: params[:group_id],
      text: params[:text],
    )
    message.save
    render json: message
  end
end
