class UsersController < ApplicationController
        
 def create
    user = User.new(user_params)
    if user.save
        session[:user_id] = user.id
        render json: user, status: :created
    else
        render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
 end

 def index
    users = User.all
    if users
        render json: users, status: :ok
    else
        render json: {errors: users.errors.full_messages}, status: :unprocessable_entity
    end
 end

 def show
    user = User.find_by(id: session[:user_id])
    if user
        render json: user, status: :ok
    else
        render json: {errors: "Unauthorized"}, status: :unauthorized
    end
 end
    
 private

 def user_params
    params.permit(:user_name, :password, :email)
 end
end
