class RatingsController < ApplicationController
    
    def new
      #@ratings = Rating.new
    end
    def index
    #  @ = .scoped
    end

    def show
    #  @ = .find(params[:id])
    end

    def create
      @ratings = Rating.new(rating_params)
      redirect_to '/ratings/new'
    end

    def update
    #  @ = .find(params[:id])
    end

    def edit
    #  @ = .find(params[:id])
    end
    
    def destroy
    #   = .find(params[:id])
    end

    private

    def rating_params
      params.require(:ratings).permit(:vehicle_ratings)
    end
end



