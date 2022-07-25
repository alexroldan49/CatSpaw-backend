class CatsController < ApplicationController


    def index
        cats = Cat.all
        render json: cats
    end    

    def show
        cat = Cat.find_by(id: params[:id])
        if cat
            render json: cat, status: :ok
        else
            render json: {errors: "Cat not found"}, status: :not_found
        end
    end
    
end
