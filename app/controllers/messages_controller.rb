class MessagesController < ApplicationController
  def index
    messages = Message.where(group_id: params[:group_id])
    render json: messages.as_json
  end

  def create
    message = Message.new(
      user_id: current_user.id,
      group_id: params[:group_id],
      text: params[:text],
    )
    message.save
    render json: message.as_json
  end
end
