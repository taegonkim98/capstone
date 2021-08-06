class JoinedGroupsController < ApplicationController
  def index
    joined_group = JoinedGroup.all
    render json: joined_group.as_json
  end

  def create
    joined_group = JoinedGroup.new(
      status: params[:status],
      user_id: params[:user_id],
      group_id: params[:group_id],
    )
    joined_group.save
    render json: joined_group.as_json
  end

  def show
    joined_group = JoinedGroup.find_by(id: params[:id])
    render json: joined_group.as_json
  end

  def update
    joined_group = JoinedGroup.find_by(id: params[:id])
    joined_group.status = params[:status] || joined_group.status
    joined_group.group_id = params[:group_id] || joined_group.group_id
    joined_group.user_id = params[:user_id] || joined_group.user_id

    joined_group.save
    render json: joined_group.as_json
  end

  def destroy
    joined_group = JoinedGroup.find_by(id: params[:id])
    joined_group.destroy
    render json: { message: "User successfully removed." }
  end
end
