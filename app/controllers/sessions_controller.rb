class SessionsController < ApplicationController
    def create
        user = User.find_by(user_name: params(:user_name))
       if user&.authenticate(params[:passord])
        session[:user_id] = user.id
        render json: user, status: :created
       else
        render json: "Invalid combination of username and password", status: :unauthorized
       end
    end

    def destroy
        session.delete :user_id
        head :no_content
    end
end
