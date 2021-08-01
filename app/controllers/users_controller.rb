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
      password_digest: params[:password_digest],
    )
    user.save
    render json: user.as_json
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
    user.password_digest = params[:password_digest] || user.password_digest
    user.save
    render json: user.as_json
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: { message: "User successfully removed." }
  end
end
