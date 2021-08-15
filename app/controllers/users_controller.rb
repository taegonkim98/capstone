class UsersController < ApplicationController
  def index
    user = User.all
    render json: user.as_json
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      zipcode: params[:zipcode],
      gender: params[:gender],
      school: params[:school],
      password: params[:password],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user.as_json
  end

  def update
    user = User.find_by(id: params[:id])
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.zipcode = params[:zipcode] || user.zipcode
    user.gender = params[:gender] || user.gender
    user.school = params[:school] || user.school
    user.password = params[:password] || user.password
    user.save
    render json: user.as_json
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: { message: "User successfully removed." }
  end
end
