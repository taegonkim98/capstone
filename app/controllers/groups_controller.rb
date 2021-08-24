class GroupsController < ApplicationController
  def index
    groups = Group.all
    render json: groups.as_json
  end

  def create
    group = Group.new(
      user_id: current_user.id,
      max_students: params[:max_students],
      zipcode: params[:zipcode],
      subject: params[:subject],
      name: params[:name],
      description: params[:description],
    )
    group.save
    render json: group.as_json
  end

  def show
    group = Group.find_by(id: params[:id])
    render json: group.as_json
  end

  def update
    group = Group.find_by(id: params[:id])
    group.user_id = params[:user_id] || group.user_id
    group.max_students = params[:max_students] || group.max_students
    group.zipcode = params[:zipcode] || group.zipcode
    group.name = params[:name] || group.name
    group.description = params[:description] || group.description
    group.subject = params[:subject] || group.subject
    group.save
    render json: group.as_json
  end

  def destroy
    group = Group.find_by(id: params[:id])
    group.destroy
    render json: { message: "Group successfully removed." }
  end
end
